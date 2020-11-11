using System.Collections.Generic;
using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using SampleAuthAPI.CoreApiSample.Models;
using SampleAuthAPI.CoreApiSample.Handlers;

namespace SampleAuthAPI.CoreApiSample.Controllers
{
    public class UserController : ControllerBase
    {
        private IUserHandler userHnd;
        private IMapper mapper;
        public UserController(
            IUserHandler hnd,
            IMapper mpr)
        {
            userHnd = hnd;
            mapper = mpr;
        }

        [Authorize]
        [HttpPost]
        public IActionResult CreateUser([FromBody] CreateUserBindingModel model)
        {
            string buf = userHnd.CreateUser(model);
            if (!string.IsNullOrEmpty(buf))
                return BadRequest(new { message = buf });

            return Ok("\"success\"");
        }
    }
}
