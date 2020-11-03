using SampleAuthAPI.IzendaBoundary.Models;
using System;
using System.Collections.Generic;

namespace SampleAuthAPI.IzendaBoundary.Models
{
    public class UserDetail
    {
        #region Variables
        private IList<RoleInfo> _roles;
        #endregion

        #region Properties
        public bool SystemAdmin { get; set; }

        public string UserName { get; set; }

        public string TenantDisplayId { get; set; }

        public Guid? TenantId { get; set; }

        public string EmailAddress { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public bool InitPassword { get; set; }
        public bool Active { get; set; }
        public IList<RoleInfo> Roles
        {
            get { return _roles ?? (_roles = new List<RoleInfo>()); }
            set { _roles = value; }
        }
        #endregion
    }
}