using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using SampleAuthAPI.coreApiSample.Models;
using SampleAuthAPI.coreApiSample.Handlers;

namespace SampleAuthAPI.coreApiSample.Controllers
{
    public class TenantController : ControllerBase
    {
        [Authorize]
        [HttpPost]
        public IActionResult CreateTenant([FromBody] CreateTenantBindingModel model)
        {
            TenantHandler hnd = new TenantHandler();
            string buf = hnd.CreateTenant(model);
            if (!string.IsNullOrEmpty(buf))
                return BadRequest(new { message = buf });

            return Ok("\"success\"");
        }
    }
}
