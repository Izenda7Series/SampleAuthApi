using System.ComponentModel.DataAnnotations;
using Newtonsoft.Json;

namespace SampleAuthAPI.coreApiSample.Models
{
        public class CreateTenantBindingModel
        {
            [Required]
            [Display(Name = "Tenant ID")]
            public string TenantId { get; set; }

            [Required]
            [Display(Name = "Tenant Name")]
            public string TenantName { get; set; }
        }
        public class CreateUserBindingModel
        {
            [Display(Name = "Tenant")]
            public string Tenant { get; set; }
            [Required]
            [Display(Name = "User ID")]
            public string UserID { get; set; }
            [Display(Name = "IsAdmin")]
            public bool IsAdmin { get; set; }
            [Required]
            [Display(Name = "First Name")]
            public string FirstName { get; set; }
            [Required]
            [Display(Name = "Last Name")]
            public string LastName { get; set; }
            [Display(Name = "Password")]
            public string Password { get; set; }
            [Display(Name = "Selected Role")]
            public string SelectedRole { get; set; }
        }
}
