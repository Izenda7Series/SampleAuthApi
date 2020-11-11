namespace SampleAuthAPI.IzendaBoundary.ActiveDirectory
{
        /// <summary>
        /// This class holds the values passed by the AD user related methods.
        /// </summary>
        public class ADUser
        {
            public bool IsValid { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public string Sam { get; set; }
            public string Email { get; set; }
            public string Password { get; set; }
            public string Reserved { get; set; }
        }
}
