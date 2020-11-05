using System;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper.QueryableExtensions;
using SampleAuthAPI.CoreApiSample.Models;
using SampleAuthAPI.CoreApiSample.Shared;
using SampleAuthAPI.IzendaBoundary;

namespace SampleAuthAPI.CoreApiSample.Handlers
{
    public class TenantHandler
    {
        #region tenant management methods
        public string CreateTenant(CreateTenantBindingModel model)
        {
            string ret = "";
            try
            {
                string izendaAdminAuthToken = IzendaTokenAuthorization.GetIzendaAdminToken();
                Tenant tenant = GetTenantByName(model.TenantName);
                if (tenant == null)
                {
                    // try to create a new tenant at izenda config DB
                    bool isCreated = CreateIzendaTenant(model, izendaAdminAuthToken);
                    // save a new tenant at user DB
                    Tenant tn = new Tenant(){ Name = model.TenantId };
                    if (isCreated) isCreated = CreateCustomTenant(tn);
                    if (!isCreated) ret = "Create tenant failed.";
                }
                else
                {
                    // user DB has the same tenant name.
                    return string.Format("the database already containd the tenant {0}.", model.TenantName);
                }
            }
            catch (Exception ex)
            {
                return string.Format("Error occured on tenant creation:\n {0}.", ex.Message);
            }
            return ret;
        }
        private static bool CreateIzendaTenant(CreateTenantBindingModel model, string adminToken)
        {
            Task<bool> tenantCreated = IzendaUtilities.CreateTenant(model.TenantName, model.TenantId, adminToken);
            return tenantCreated.Result; //Let it finish and return the results, here we don't worry about the performance.
        }
        private bool CreateCustomTenant(Tenant tn)
        {
            Tenant t = new Tenant();
            t.Name = tn.Name;
            int savedNum = 0;
            using (DBContext ctx = Utilities.GetDB())
            {
                ctx.Tenants.Add(t);
                savedNum = ctx.SaveChanges();
            }

            return (t != null && savedNum >0);
        }
        #endregion
        #region tenant helpers
        /// <summary>
        /// this method is trying to find the tenant with the provided name.
        /// if the tenant exists - the method returns the tenant object.
        /// If the tenant with the provided name not found - the method returns null */
        /// </summary>
        /// <param name="name"></param>
        /// <returns>Tenant or null</returns>
        public static Tenant GetTenantByName(string name)
        {
            Tenant ret = null;
            try
            {
                using (DBContext ctx = Utilities.GetDB())
                {
                    ret = ctx.Tenants.FirstOrDefault(t => name.ToLower().Equals(t.Name.ToLower()));
                }
            }
            catch {
                return null;
            }
            return ret;
        }
        #endregion
    }
}
