using System;
using Microsoft.AspNetCore.Mvc;
using AutoMapper;
using System.IdentityModel.Tokens.Jwt;
using SampleAuthAPI.CoreApiSample.Shared;
using Microsoft.Extensions.Options;
using System.Text;
using Microsoft.IdentityModel.Tokens;
using System.Security.Claims;
using System.Reflection;
using Microsoft.AspNetCore.Authorization;
using SampleAuthAPI.CoreApiSample.Models;
using SampleAuthAPI.CoreApiSample.Handlers;
using SampleAuthAPI.IzendaBoundary;
using SampleAuthAPI.IzendaBoundary.Models;

namespace SampleAuthAPI.CoreApiSample.Controllers
{
    public class AccountController : ControllerBase
    {
        private IUserHandler userHndl;
        private IMapper mapper;
        private readonly AppSettings appConfig;

        public AccountController(
            IUserHandler hndl,
            IMapper mpr,
            IOptions<AppSettings> appSettings)
        {
            userHndl = hndl;
            mapper = mpr;
            appConfig = appSettings.Value;
        }

        [HttpPost]
        [AllowAnonymous]
        [Consumes("application/x-www-form-urlencoded")]
        public IActionResult DoAuth([FromForm] AuthenticateModel model)
        {
            string authRet = userHndl.Authenticate(model);
            if (!string.IsNullOrEmpty(authRet))
                return BadRequest(new { message = authRet });

            JwtSecurityTokenHandler tokenHandler = new JwtSecurityTokenHandler();
            byte[] key = Encoding.ASCII.GetBytes(appConfig.RSAPrivateKey);
            SecurityTokenDescriptor tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new Claim[]
                {
                    new Claim(ClaimTypes.Name, model.username),
                    new Claim(ClaimTypes.NameIdentifier, string.IsNullOrEmpty(model.tenant)? "":model.tenant)
                }),
                Expires = DateTime.UtcNow.AddDays(7),
                SigningCredentials = new SigningCredentials(new SymmetricSecurityKey(key), SecurityAlgorithms.HmacSha256Signature)
            };
            SecurityToken token = tokenHandler.CreateToken(tokenDescriptor);
            string tokenString = tokenHandler.WriteToken(token);

            return Ok(new
            {
                access_token = tokenString,
                token_type = "bearer",
                expires_in = token.ValidTo,
                userName = model.username,
                issued = token.ValidFrom,
                expires = token.ValidTo
            });
        }
        [HttpPost]
        [Authorize]
        public IActionResult Logout()
        {
            // this method is preserved for the API compatibility.
            // JWT logout is not straightforward. Expire it and/or remove the token on the client side.
            return Ok();
        }

        [HttpGet]
        [Authorize]
        public string GenerateToken()
        {
            string username = User.Identity.Name;
            string tenantName = "";
            try
            {
                string nameIdentifierType = @"http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier";
                tenantName = ((ClaimsIdentity)User.Identity).FindFirst(nameIdentifierType).Value;
                foreach (Claim cl in ((ClaimsIdentity)User.Identity).Claims)
                {
                    if (cl.Type.Contains("nameidentifier"))
                        tenantName = cl.Value;

                }
            }
            catch { }
            UserInfo user = new UserInfo { UserName = username, TenantUniqueName = tenantName };
            string token = IzendaTokenAuthorization.GetToken(user);

            return ("\"" + token + "\""); // believe it or not, otherwise our FE service takes it as errored out.
        }

        [HttpGet]
        public UserInfo ValidateIzendaAuthToken(string access_token)
        {
            try
            {
                UserInfo userInfo = IzendaTokenAuthorization.GetUserInfo(access_token);
                return userInfo;
            }
            catch {
                return null;
            }
        }

        [AllowAnonymous]
        [HttpGet]
        public IActionResult GetIzendaAccessToken(string message)
        {
            UserInfo userInfo = IzendaTokenAuthorization.DecryptIzendaAuthenticationMessage(message);
            string token = IzendaTokenAuthorization.GetToken(userInfo);

            return Ok(new { Token = token });
        }
        [AllowAnonymous]
        [HttpGet]
        /// this endpoint returns the simple default page when the system is started from IIS
        public ContentResult Index()
        {
            string framework = Assembly
                .GetEntryAssembly()?
                .GetCustomAttribute<System.Runtime.Versioning.TargetFrameworkAttribute>()?
                .FrameworkName;
            string page = string.Format(@"<!DOCTYPE html><html><head><meta charset='utf-8' />
                        <title>Izenda Sample Authentication Service Application for {0}</title>
                        </head><body style='text-align:center'>
                        <h2>Izenda Sample Authentication Service Application for {0}</h2>
                        <div>USAGE:</div><div>api/account/GetIzendaAccessToken/</div><div>etc...</div></body></html>", framework);
            return base.Content(page, "text/html");
        }
    }
}
