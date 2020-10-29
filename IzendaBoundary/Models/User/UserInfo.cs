namespace SampleAuthAPI.IzendaBoundary.Models
{
    public class UserInfo
    {
        #region Properties
        public string UserName { get; set; }

        // This corresponds to the 'TenantID' field in the IzendaTenant table
        public string TenantUniqueName { get; set; } 
        #endregion
    }
}
