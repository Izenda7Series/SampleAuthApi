using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using WebApi2StarterKit.Models;
using System.Data.Entity;
using System.Linq;
using System;
using WebApi2StarterKit.Validators;
using System.DirectoryServices.AccountManagement;

namespace WebApi2StarterKit
{
    // Configure the application user manager used in this application. UserManager is defined in ASP.NET Identity and is used by the application.

    public class ApplicationUserManager : UserManager<ApplicationUser>
    {
        public ApplicationUserManager(IUserStore<ApplicationUser> store)
            : base(store)
        {
        }

        public async Task<ApplicationUser> FindTenantUserAsync(string tenant, string username)
        {
            var context = ApplicationDbContext.Create();

            var query = context.Users
                .Include(x => x.Tenant)
                .Where(x => x.UserName.Equals(username, StringComparison.InvariantCultureIgnoreCase));

            if (!string.IsNullOrWhiteSpace(tenant))
                query = query.Where(x => x.Tenant.Name.Equals(tenant, StringComparison.InvariantCultureIgnoreCase));
            else
                query = query.Where(x => x.Tenant == null);

            var user = await query.SingleOrDefaultAsync();

            return user;
        }

        public static ApplicationUserManager Create(IdentityFactoryOptions<ApplicationUserManager> options, IOwinContext context)
        {
            var manager = new ApplicationUserManager(new UserStore<ApplicationUser>(context.Get<ApplicationDbContext>()));
            // Configure validation logic for usernames
            manager.UserValidator = new CustomUserValidator<ApplicationUser>(manager)
            {
                AllowOnlyAlphanumericUserNames = false,
                RequireUniqueEmail = false
            };
            // Configure validation logic for passwords
            manager.PasswordValidator = new PasswordValidator
            {
                RequiredLength = 6,
                RequireNonLetterOrDigit = true,
                RequireDigit = true,
                RequireLowercase = true,
                RequireUppercase = true,
            };
            var dataProtectionProvider = options.DataProtectionProvider;
            if (dataProtectionProvider != null)
            {
                manager.UserTokenProvider = new DataProtectorTokenProvider<ApplicationUser>(dataProtectionProvider.Create("ASP.NET Identity"));
            }
            return manager;
        }
        /* The following method validates the existence of the A.D. user and returns the information stored in the AD principal */
        public ADUser ValidateADUserAsync(string userID, string password)
        {
            ADUser ret = new ADUser();
            ret.isValid = false;
            /* trying to use the pre-set domain values */
            string adDomain = System.Configuration.ConfigurationManager.AppSettings["ADDomain"];
            string adContainer = System.Configuration.ConfigurationManager.AppSettings["ADContainer"];
            string adLoginName = System.Configuration.ConfigurationManager.AppSettings["ADLoginUser"];
            string adLoginPwd = System.Configuration.ConfigurationManager.AppSettings["ADLoginPwd"];

            /* if they don't exist - let's try to use the domain that the authentication server belongs to. */
            if (string.IsNullOrEmpty(adDomain)) adDomain = Environment.UserDomainName;
            if (string.IsNullOrEmpty(adLoginName)) adDomain = Environment.UserName;

            if (string.IsNullOrEmpty(userID) || string.IsNullOrEmpty(adDomain))
                return ret;

            PrincipalContext ctx = null;
            try
            {
                /* Implementations of AD/LDAP work differently, for some of them we can use 
                 * the environment and for some - we must use the pre - defined values */
                if (string.IsNullOrEmpty(adContainer) && string.IsNullOrEmpty(adLoginName) && string.IsNullOrEmpty(adLoginPwd))
                    ctx = new PrincipalContext(ContextType.Domain, adDomain);
                else
                    ctx = new PrincipalContext(ContextType.Domain, adDomain, adContainer, adLoginName, adLoginPwd);
                ret = GetADUserByEmail(userID, ctx);
                UserPrincipal userPrincipal = UserPrincipal.FindByIdentity(ctx, IdentityType.SamAccountName, ret.sam);

                if (userPrincipal != null)
                {
                    // Validate credential with Active Directory information. This is optional for authentication process.
                    // If you want check password one more time, you can check here. Otherwise, you need to remove password from parameter and skip this and set isAuthencate as true since userPrincipal is not null.
                    ret.isValid = ctx.ValidateCredentials(ret.sam, password, ContextOptions.Negotiate);
                    if (ret.isValid) ret.isValid = !userPrincipal.IsAccountLockedOut();
                    if (ret.isValid && userPrincipal.Enabled.HasValue && !userPrincipal.Enabled.Value) ret.isValid = false;
                }
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine(e);
                ret.isValid = false;
            }
            finally
            {
                if (ctx != null) ctx.Dispose();
            }

            return ret;
        }
        public async Task<bool>  CreateADUser(ADUser usr, string tenant)
        {
            bool ret = false;
            CreateUserBindingModel model = new CreateUserBindingModel();
            model.FirstName = usr.firstName;
            model.LastName = usr.lastName;
            model.UserID = usr.email;
            model.Tenant = tenant;
            model.IsAdmin = false;
            await CreateUserAsync(model,usr.password);
            return ret;
        }
        public async Task<string> CreateUserAsync(CreateUserBindingModel model, string pass = "") { 
            string ret = "";

            //validate tenant name + user name is unique
            if (await FindTenantUserAsync(model.Tenant, model.UserID) != null)
            {
                return string.Format("The User ID '{0}' is already existed in tenant '{1}'.", model.UserID, model.Tenant);
            }

            Tenant tenant = null;

            if (!string.IsNullOrWhiteSpace(model.Tenant))
            {
                tenant = new Tenant { Name = model.Tenant };
                var tenantManager = new Managers.TenantManager();
                var exstingTenant = tenantManager.GetTenantByName(model.Tenant);

                if (exstingTenant != null)
                    tenant = exstingTenant;
                else
                    tenant = await tenantManager.SaveTenantAsync(tenant);
            }
            var user = new ApplicationUser() { UserName = model.UserID, Email = model.UserID, TenantId = tenant?.Id };

            //TODO: do something smarter about the password.
            string defaultPWD = string.IsNullOrEmpty(pass)?"Izenda@123":pass;
            IdentityResult result = await CreateAsync(user, defaultPWD);

            if (!result.Succeeded)
            {
                return string.Join(".", result.Errors);
            }
            else
            {
                try
                {
                    user.Tenant = tenant;

                    ////izenda
                    var izendaAdminAuthToken = IzendaBoundary.IzendaTokenAuthorization.GetIzendaAdminToken();

                    if (tenant != null)
                        await IzendaBoundary.IzendaUtilities.CreateTenant(tenant.Name, izendaAdminAuthToken);

                    string assignedRole = String.IsNullOrEmpty(model.SelectedRole) ? "Employee" : model.SelectedRole;
                    var success = await IzendaBoundary.IzendaUtilities.CreateIzendaUser(
                        model.Tenant,
                        model.UserID,
                        model.LastName,
                        model.FirstName,
                        model.IsAdmin,
                        assignedRole,
                        izendaAdminAuthToken);

                    /// end izenda
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            return ret;
        }
        public ADUser GetADUserByEmail(string email, PrincipalContext ctx) {
            ADUser ret = new ADUser();
            ret.isValid = false;
            UserPrincipal uP = new UserPrincipal(ctx);
            Principal pr = null;
            using (PrincipalSearcher searcher = new PrincipalSearcher(uP))
            {
                PrincipalSearchResult<Principal> results = searcher.FindAll();
                pr = results.FirstOrDefault(r => r.SamAccountName.Equals(email.Split('@')[0], StringComparison.InvariantCultureIgnoreCase));
                // it does not always find the user by sAM account. In this case, let's try to find by the email. 
                if (pr == null)
                {
                    foreach (Principal result in results)
                    {
                        try
                        {
                            if (email.Equals((result as UserPrincipal).EmailAddress, StringComparison.InvariantCultureIgnoreCase)) {
                                pr = result;
                            }
                        }
                        catch { }
                    }
                }
                if (pr != null)
                {
                    UserPrincipal buff = pr as UserPrincipal;
                    ret.email = buff.EmailAddress;
                    ret.firstName = buff.Name.Split(' ')[0];
                    ret.lastName = buff.Name.Split(' ')[1];
                    ret.sam = buff.SamAccountName;
                }
            }
            return ret;
        }
        // This structure holds the values passed by the AD user related methods.
        public struct ADUser
        {
            public bool isValid;
            public string firstName;
            public string lastName;
            public string sam;
            public string email;
            public string password;
        }
    }
}
