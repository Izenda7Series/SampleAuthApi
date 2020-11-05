using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;
using SampleAuthAPI.CoreApiSample.Models;
using SampleAuthAPI.CoreApiSample.Shared;
using SampleAuthAPI.IzendaBoundary;
using Microsoft.AspNetCore.Identity;

namespace SampleAuthAPI.CoreApiSample.Handlers
{
    public interface IUserHandler
    {
        string Authenticate(AuthenticateModel authData);
        IEnumerable<AspNetUser> GetAll();
        AspNetUser GetById(int id);
        AspNetUser GetByName(string UserName);
        string CreateUser(CreateUserBindingModel model);
    }

    public class UserHandler : IUserHandler
    {
        private string DefaultPassword = Utilities.GetDefaultPassword();
        private readonly DBContext dbCtx;

        public UserHandler(DBContext ctx)
        {
            dbCtx = ctx;
        }

        #region password methods
        public string Authenticate(AuthenticateModel authData)
        {
            string ret="";
            if (string.IsNullOrEmpty(authData.username) || string.IsNullOrEmpty(authData.password))
                return string.Format("The {0} can not be empty", string.IsNullOrEmpty(authData.username)?"user name":"password");

            Tenant tn = null;
            if (!string.IsNullOrEmpty(authData.tenant)){
                tn = dbCtx.Tenants.SingleOrDefault(t => t.Name.ToLower().Equals(authData.tenant.ToLower()));
                if (tn == null) // nonexisting tenant name provided
                    return string.Format("Tenant {0} not found", authData.tenant);
            }

            AspNetUser user = dbCtx.AspNetUsers.SingleOrDefault(
                                        u => u.UserName.ToLower().Equals(authData.username.ToLower()) &&
                                        (tn==null ? u.Tenant_Id == null : u.Tenant_Id == tn.Id));

            if (user == null)
                return string.Format("User {0} not found {1}", authData.username, tn == null ? "":"for the tenant " + tn.Name);

            if (!VerifyPassword(authData.password, user))
                return "The password is incorrect";

            // our sample (custom authenticacion) database does not have the user status flag.
            // we will use Izenda to find out if the user is active or not.
            string adminToken = IzendaTokenAuthorization.GetIzendaAdminToken();
            Task<IzendaBoundary.Models.UserDetail> getUser = IzendaUtilities.GetIzendaUserByTenantAndName(user.UserName, tn==null?"":tn.Name, adminToken);
            IzendaBoundary.Models.UserDetail userDetails = getUser.Result;
            if (userDetails == null)
                return string.Format("The user {0} not found in [Izenda database]. Contact your administrator please", user.UserName);
            else if(!userDetails.Active)
                return string.Format("The user {0} was found but it is not active. Contact your administrator please", user.UserName);
            return ret;
        }

        public IEnumerable<AspNetUser> GetAll()
        {
            return dbCtx.AspNetUsers;
        }

        public AspNetUser GetById(int id)
        {
            return dbCtx.AspNetUsers.Find(id);
        }
        public AspNetUser GetByName(string name)
        {
            return dbCtx.AspNetUsers.FirstOrDefault(u => u.UserName.ToLower().Equals(name.ToLower()));
        }

        public string CreateUser(CreateUserBindingModel model)
        {
            string ret="";
            try
            {
                Tenant tn = null;
                if (!string.IsNullOrEmpty(model.Tenant)) tn = TenantHandler.GetTenantByName(model.Tenant);
                if (dbCtx.AspNetUsers.Any(u => (u.UserName.ToLower().Equals(model.UserID.ToLower()))
                                            && (tn == null ? u.Tenant_Id == null : u.Tenant_Id == tn.Id)))
                    throw new AppException("The user ID: \"" + model.UserID + "\" conflicts with the name in our DB" + (tn == null ? "":(" for tenant " + tn.Name)));
                bool isSaved = CreateCustomUser(model);
                if (isSaved) isSaved = CreateIzendaUser(model);
                if (!isSaved) ret = "Create user failed.";
            }
            catch (AppException ex)
            {
                ret = ex.Message;
            }
            return ret;
        }
        #endregion
        #region user management methods
        private bool CreateCustomUser(CreateUserBindingModel model) {
            string hash, stamp;
            CreateHashNStamp(model.UserID, string.IsNullOrWhiteSpace(model.Password) ? DefaultPassword : model.Password, out hash, out stamp);

            AspNetUser user = new AspNetUser()
            {
                Id = Guid.NewGuid().ToString(),
                UserName = model.UserID,
                NormalizedUserName = model.UserID.ToUpper(),
                Email = model.UserID,
                NormalizedEmail = model.UserID.ToUpper(),
                PasswordHash = hash,
                SecurityStamp = stamp,
                ConcurrencyStamp = Guid.NewGuid().ToString()
            };
            Tenant tn = TenantHandler.GetTenantByName(model.Tenant);
            if (tn != null) user.Tenant_Id = tn.Id;

            dbCtx.AspNetUsers.Add(user);
            int savedNum = dbCtx.SaveChanges();

            return (savedNum > 0 && user != null);
        }
        private bool CreateIzendaUser(CreateUserBindingModel model) {
            bool ret = false;
            try
            {
                //check if the tenant name provided
                if (!string.IsNullOrWhiteSpace(model.Tenant)) {
                    //check if the tenant exists / create new if not
                    Tenant tn = TenantHandler.GetTenantByName(model.Tenant);
                    if (tn == null) {
                        CreateTenantBindingModel tm = new CreateTenantBindingModel(){ TenantName = model.Tenant, TenantId = model.Tenant };
                        TenantHandler th = new TenantHandler();
                        if (!string.IsNullOrEmpty(th.CreateTenant(tm))) 
                            return false;
                    }
                }
                string adminToken = IzendaTokenAuthorization.GetIzendaAdminToken();

                string assignedRole = String.IsNullOrEmpty(model.SelectedRole) ? "Employee" : model.SelectedRole;
                Task<bool> createdUser = IzendaUtilities.CreateIzendaUser(
                    model.Tenant,
                    model.UserID,
                    model.LastName,
                    model.FirstName,
                    model.IsAdmin,
                    assignedRole,
                    adminToken);
                // launch the task async and wait for the result.
                ret = createdUser.Result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return ret;
        }
        #endregion
        #region password methods
        private static void CreateHashNStamp(string user, string password, out string hash, out string stamp)
        {
            if (password == null || string.IsNullOrWhiteSpace(password))
                throw new ArgumentException("password is empty", "password");

            Guid guid = Guid.NewGuid();
            stamp = String.Concat(Array.ConvertAll(guid.ToByteArray(), b => b.ToString("X2")));
            PasswordHasher<string> hasher = new PasswordHasher<string>();
            hash = hasher.HashPassword(user, password);
        }

        private static bool VerifyPassword(string password, AspNetUser user)
        {
            PasswordHasher<string> hasher = new PasswordHasher<string>();
            return (PasswordVerificationResult.Success ==  hasher.VerifyHashedPassword(user.UserName, user.PasswordHash, password));
        }
        #endregion
    }
}