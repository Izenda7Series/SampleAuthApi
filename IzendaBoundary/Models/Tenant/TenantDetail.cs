using System;

namespace SampleAuthAPI.IzendaBoundary.Models
{
    public class TenantDetail
    {
        #region Properties
        public bool Active { get; set; }

        public bool Disable { get; set; }

        public string Name { get; set; }

        public string TenantId { get; set; }

        public Guid Id { get; set; }
        #endregion
    }
}
