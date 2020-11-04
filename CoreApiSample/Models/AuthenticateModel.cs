using System.ComponentModel.DataAnnotations;

namespace SampleAuthAPI.CoreApiSample.Models
{
    public class AuthenticateModel
    {
        public string grant_type { get; set; }
        public string username { get; set; }
        public string password { get; set; }
        public string tenant { get; set; }
    }
}