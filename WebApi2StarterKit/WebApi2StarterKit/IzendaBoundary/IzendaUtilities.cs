using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using WebApi2StarterKit.IzendaBoundary.Models;
using WebApi2StarterKit.Models;

namespace WebApi2StarterKit.IzendaBoundary
{
    public static class IzendaUtilities
    {
        #region Variables
        private static Dictionary<string, int> _allTenants = new Dictionary<string, int>();
        #endregion

        #region Methods
        public static Tenant GetTenantByName(string name)
        {
            using (var context = ApplicationDbContext.Create())
            {
                var tenant = context.Tenants.Where(x => x.Name.Equals(name, StringComparison.InvariantCultureIgnoreCase)).SingleOrDefault();

                return tenant;
            }
        }

        public static IEnumerable<string> GetAllTenants()
        {
            using (var context = ApplicationDbContext.Create())
            {
                var tenantList = new List<string>();

                foreach (var tenant in context.Tenants)
                {
                    tenantList.Add(tenant.Name);
                }

                return tenantList;
            }
        }

        public static Dictionary<string, int> AllTenants
        {
            get
            {
                if (_allTenants.Count > 0)
                    return _allTenants;

                using (var context = ApplicationDbContext.Create())
                {
                    _allTenants = context.Tenants.Select(x => x).ToDictionary(i => i.Name, i => i.Id);
                }

                return _allTenants;
            }
        }

        public static Tenant GetTenantById(int id)
        {
            using (var context = ApplicationDbContext.Create())
            {
                var tenant = context.Tenants.Where(x => x.Id == id).SingleOrDefault();

                return tenant;
            }
        }

        public static async Task<Tenant> SaveTenantAsync(Tenant tenant)
        {
            using (var context = ApplicationDbContext.Create())
            {
                context.Tenants.Add(tenant);
                await context.SaveChangesAsync();

                return tenant;
            }
        }

        /// <summary>
        /// Create a tenant
        /// For more information, please refer to https://www.izenda.com/docs/ref/api_tenant.html#tenant-apis
        /// </summary>
        public static async Task<bool> CreateTenant(string tenantName, string tenantId, string authToken)
        {
            var existingTenant = await GetIzendaTenantByName(tenantId, authToken);
            if (existingTenant != null)
                return false;

            var tenantDetail = new TenantDetail
            {
                Active = true,
                Disable = false,
                Name = tenantName,
                TenantId = tenantId
            };

            // For more information, please refer to https://www.izenda.com/docs/ref/api_tenant.html#post-tenant
            return await WebApiService.Instance.PostReturnBooleanAsync("tenant", tenantDetail, authToken);
        }

        /// <summary>
        /// Create a tenant
        /// At this point, it is safer to leave the old method rather then to remove it.
        /// TODO: remove this method completely.
        /// </summary>
        [Obsolete("This method is obsolete. Call 'CreateIzendaUser(string tenant, string userID, string lastName...' instead. We shall address this on creating the common DLL for all the starter kits.", false)]
        public static async Task CreateTenant(string tenantName, string authToken)
        {
            var existingTenant = await GetIzendaTenantByName(tenantName, authToken);
            if (existingTenant != null)
                return;

            var tenantDetail = new TenantDetail
            {
                Active = true,
                Disable = false,
                Name = tenantName,
                TenantId = tenantName
            };

            await WebApiService.Instance.PostAsync("tenant", tenantDetail, authToken);
        }

        public static async Task<RoleDetail> CreateRole(string roleName, TenantDetail izendaTenant, string authToken)
        {
            var role = await GetIzendaRoleByTenantAndName(izendaTenant != null ? (Guid?)izendaTenant.Id : null, roleName, authToken);

            if (role == null)
            {
                role = new RoleDetail
                {
                    Active = true,
                    Deleted = false,
                    NotAllowSharing = false,
                    Name = roleName,
                    TenantId = izendaTenant != null ? (Guid?)izendaTenant.Id : null
                };

                var response = await WebApiService.Instance.PostReturnValueAsync<AddRoleResponeMessage, RoleDetail>("role", role, authToken);
                role = response.Role;
            }

            return role;
        }

        /// <summary>
        /// Create a user
        /// For more information, please refer to https://www.izenda.com/docs/ref/api_user.html#post-external-user
        /// ATTN: please don't use this deprecated end point https://www.izenda.com/docs/ref/api_user.html#post-user-integration-saveuser
        /// </summary>
        public static async Task<bool> CreateIzendaUser(string tenant, string userID, string lastName, string firstName, bool isAdmin, string roleName, string authToken)
        {
            var izendaTenant = !string.IsNullOrEmpty(tenant) ? await GetIzendaTenantByName(tenant, authToken) : null;

            var izendaUser = new UserDetail
            {
                Username = userID,
                TenantId = izendaTenant != null ? (Guid?)izendaTenant.Id : null,
                LastName = lastName,
                FirstName = firstName,
                TenantDisplayId = izendaTenant != null ? izendaTenant.Name : string.Empty,
                InitPassword = false,
                SystemAdmin = isAdmin
            };

            if (!string.IsNullOrWhiteSpace(roleName))
            {
                var izendaRole = await CreateRole(roleName, izendaTenant, authToken);
                izendaUser.Roles.Add(izendaRole);
            }

            bool success = await WebApiService.Instance.PostReturnBooleanAsync("external/user", izendaUser, authToken);

            return success;
        }
        /// <summary>
        /// This method is left here for backward compatibility reasons.
        /// TODO: It should be deleted in the further versions
        /// 
        /// </summary>
        /// <param name="appUser">the application user</param>
        /// <param name="roleId">the role id</param>
        /// <param name="authToken">the authentication token</param>
        /// <returns>true if the operation was successful, false otherwise</returns>

        [ObsoleteAttribute("This method is obsolete. Call 'CreateIzendaUser(string tenant, string userID, string lastName...' instead.  We shall address this on creating the common DLL for all the starter kits.", false)]
        public static async Task<bool> CreateIzendaUser(WebApi2StarterKit.Models.ApplicationUser appUser, string roleName, string authToken)
        {
            var izendaTenant = appUser.Tenant != null ? await GetIzendaTenantByName(appUser.Tenant.Name, authToken) : null;

            var izendaUser = new UserDetail
            {
                FirstName = izendaTenant != null ? izendaTenant.Name : string.Empty,
                LastName = appUser.UserName.Split('@')[0],
                Username = appUser.UserName,
                TenantDisplayId = izendaTenant != null ? izendaTenant.Name : string.Empty,
                TenantId = izendaTenant != null ? (Guid?)izendaTenant.Id : null,
                InitPassword = true,
                Active = true
            };

            if (!string.IsNullOrWhiteSpace(roleName))
            {
                var izendaRole = await CreateRole(roleName, izendaTenant, authToken);
                izendaUser.Roles.Add(izendaRole);
            }

            bool success = await WebApiService.Instance.PostReturnValueAsync<bool, UserDetail>("user/integration/saveUser", izendaUser, authToken);

            return success;
        }

        public static async Task<TenantDetail> GetIzendaTenantByName(string tenantName, string authToken)
        {
            var tenants = await WebApiService.Instance.GetAsync<IList<TenantDetail>>("/tenant/allTenants", authToken);
            if (tenants != null)
                return tenants.FirstOrDefault(x => x.TenantId.Equals(tenantName, StringComparison.InvariantCultureIgnoreCase));

            return null;
        }

        /// <summary>
        /// Get a matched role from the list of Izenda Roles under the selected tenant
        /// </summary>
        private static async Task<RoleDetail> GetIzendaRoleByTenantAndName(Guid? tenantId, string roleName, string authToken)
        {
            var roles = await GetAllIzendaRoleByTenant(tenantId, authToken);

            if (roles.Any())
                return roles.FirstOrDefault(r => r.Name.Equals(roleName, StringComparison.InvariantCultureIgnoreCase));

            return null;
        }

        /// <summary>
        /// Get all Izenda Roles by tenant
        /// For more information, please refer to https://www.izenda.com/docs/ref/api_role.html#get-role-all-tenant-id
        /// </summary>
        public static async Task<IList<RoleDetail>> GetAllIzendaRoleByTenant(Guid? tenantId, string authToken)
        {
            var roleList = await WebApiService.Instance.GetAsync<IList<RoleDetail>>("/role/all/" + (tenantId.HasValue ? tenantId.ToString() : null), authToken);

            return roleList;
        }
        /// <summary>
        /// Get a list of all Izenda tenants
        /// For more information, please refer to https://www.izenda.com/docs/ref/api_role.html#get-role-all-tenant-id
        /// </summary>
        public static Task<IList<TenantDetail>> GetIzendaTenants(string authToken)
        {
            return WebApiService.Instance.GetAsync<IList<TenantDetail>>("/tenant/allTenants", authToken);
        }
        #endregion
    }
}
