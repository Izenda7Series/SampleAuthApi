using SampleAuthAPI.IzendaBoundary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SampleAuthAPI.IzendaBoundary
{
    public class IzendaUtilities
    {
        #region Methods
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
            return await WebAPIService.Instance.PostReturnBooleanAsync("tenant", tenantDetail, authToken);
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

                var response = await WebAPIService.Instance.PostReturnValueAsync<AddRoleResponeMessage, RoleDetail>("role", role, authToken);
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
                UserName = userID,
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

            bool success = await WebAPIService.Instance.PostReturnBooleanAsync("external/user", izendaUser, authToken);

            return success;
        }

        public static async Task<TenantDetail> GetIzendaTenantByName(string tenantName, string authToken)
        {
            var tenants = await WebAPIService.Instance.GetAsync<IList<TenantDetail>>("/tenant/allTenants", authToken);
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
            var roleList = await WebAPIService.Instance.GetAsync<IList<RoleDetail>>("/role/all/" + (tenantId.HasValue ? tenantId.ToString() : null), authToken);

            return roleList;
        }
        /// <summary>
        /// Get list of Izenda users by tenant
        /// For more information, please refer to https://www.izenda.com/docs/ref/api_user.html#post-user-all
        /// </summary>
        public static async Task<IList<UserDetail>> GetIzendaUsersByTenant(Guid? tenantId, string authToken)
        {
            IList<UserDetail> userList = await WebAPIService.Instance.GetAsync<IList<UserDetail>>("/user/all/" + (tenantId.HasValue ? tenantId.ToString() : null), authToken);
            return userList;
        }
        /// <summary>
        /// Get a user from the list of Izenda Users by the provided tenant
        /// </summary>
        public static async Task<UserDetail> GetIzendaUserByTenantAndName(string userName, string tenantName, string authToken)
        {
            TenantDetail tenant = await GetIzendaTenantByName(tenantName, authToken);
            Guid? tnId = null;
            if (tenant != null) tnId = tenant.Id;
            IList<UserDetail> userList = await GetIzendaUsersByTenant(tnId, authToken);
            return userList.FirstOrDefault(u => u.UserName.Equals(userName, StringComparison.InvariantCultureIgnoreCase));
        }
        #endregion
    }
}
