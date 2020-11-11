using System;
using System.Linq;
using System.DirectoryServices.AccountManagement;

namespace SampleAuthAPI.IzendaBoundary.ActiveDirectory
{
    public class ADUtilities
    {
        public static ADUser ValidateADUser(string authName, string authPass, ADConfig cfg)
        {
            ADUser ret = new ADUser { IsValid = false };
            // use the domain that the authentication server belongs to. 
            string adDomain = Environment.UserDomainName;
            string adLoginName = Environment.UserName;
            // but if the values exist in the configuration - use them.
            if (!string.IsNullOrEmpty(cfg.ADDomain)) adDomain = cfg.ADDomain;
            if (!string.IsNullOrEmpty(cfg.ADLoginName)) adLoginName = cfg.ADLoginName;

            string authUser = authName;
            string authPassword = authPass;
            if (string.IsNullOrEmpty(authName) || string.IsNullOrEmpty(adDomain))
                return ret;

            PrincipalContext ctx = null;
            try
            {
                // Implementations of AD/LDAP work differently, for some of them we can use 
                // the environment and for some - we must use the pre - defined values
                if (string.IsNullOrEmpty(cfg.ADContainer) && string.IsNullOrEmpty(cfg.ADLoginName) && string.IsNullOrEmpty(cfg.ADLoginPwd))
                    ctx = new PrincipalContext(ContextType.Domain, adDomain);
                else
                    ctx = new PrincipalContext(ContextType.Domain, adDomain, cfg.ADContainer, adLoginName, cfg.ADLoginPwd);
                ret = GetADUserByEmail(authUser, ctx);
                UserPrincipal userPrincipal = UserPrincipal.FindByIdentity(ctx, IdentityType.SamAccountName, ret.Sam);

                if (userPrincipal != null)
                {
                    // Validate credential with Active Directory information. This is optional for authentication process.
                    ret.IsValid = ctx.ValidateCredentials(ret.Sam, authPassword, ContextOptions.Negotiate);
                    if (ret.IsValid) ret.IsValid = !userPrincipal.IsAccountLockedOut();
                    if (ret.IsValid && userPrincipal.Enabled.HasValue && !userPrincipal.Enabled.Value) ret.IsValid = false;
                }
            }
            catch (Exception e)
            {
                System.Diagnostics.Debug.WriteLine(e);
                ret.IsValid = false;
                ret.Reserved = e.Message;
            }
            finally
            {
                if (ctx != null) ctx.Dispose();
            }

            return ret;
        }
        private static ADUser GetADUserByEmail(string email, PrincipalContext ctx)
        {
            ADUser ret = new ADUser { IsValid = false };
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
                            if (email.Equals((result as UserPrincipal).EmailAddress, StringComparison.InvariantCultureIgnoreCase))
                            {
                                pr = result;
                            }
                        }
                        catch { }
                    }
                }
                if (pr != null)
                {
                    UserPrincipal buff = pr as UserPrincipal;
                    ret.Email = buff.EmailAddress;
                    ret.FirstName = buff.Name.Split(' ')[0];
                    ret.LastName = buff.Name.Split(' ')[1];
                    ret.Sam = buff.SamAccountName;
                }
            }
            return ret;
        }
    }
}
