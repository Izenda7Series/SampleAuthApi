using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Microsoft.Owin.Security.Cookies;
using Microsoft.Owin.Security.OAuth;
using WebApi2StarterKit.Models;

namespace WebApi2StarterKit.Providers
{
    public class ApplicationOAuthProvider : OAuthAuthorizationServerProvider
    {
        private readonly string _publicClientId;

        public ApplicationOAuthProvider(string publicClientId)
        {
            if (publicClientId == null)
            {
                throw new ArgumentNullException("publicClientId");
            }

            _publicClientId = publicClientId;
        }

        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {
            ApplicationUserManager userManager = context.OwinContext.GetUserManager<ApplicationUserManager>();

            var data = await context.Request.ReadFormAsync();
            string tenant = data["tenant"];
            ApplicationUser user = null;
            bool useAD = false;
            ApplicationUserManager.ADUser adUser = new ApplicationUserManager.ADUser();

            try
            {
                // in this example application, we do not use the full ActiveDirectory identity features.
                // That, plus synchronizing the users in the configuration DB and in the WebApi
                // authorization DB, allows just to validate the user against the Active Directory.
                // In case you dont want to synchronize the users and/or not using the authorization DB
                // while still want to use the Active Directory - you need to implement
                // the full - featured identity mechanizm with ActiveDirectory support.

                bool.TryParse(System.Configuration.ConfigurationManager.AppSettings["useADlogin"], out useAD);
                if (useAD) adUser = userManager.ValidateADUserAsync(context.UserName, context.Password);
                if (!useAD || adUser.isValid) user = await userManager.FindTenantUserAsync(tenant, context.UserName);
            }
            catch (Exception ex)
            {
                throw;
            }

            if (user == null || (useAD && !adUser.isValid))
            {
                // Tip. 
                // At this point, if the adUser.isValid == true, it is possible to automatically
                // create the AD user in Izenda DB, if you'd like to.
                // See the article "Few aspects of Active Directory authentication" at Izenda Confluence board for details
                string __msg = "The user name or tenant name is incorrect.";
                context.SetError("invalid_grant", __msg);
                return;
            }

            bool isValidPassword = await userManager.CheckPasswordAsync(user, context.Password);

            if (isValidPassword == false)
            {
                context.SetError("invalid_grant", "The user name or password is incorrect.");
                return;
            }
            ClaimsIdentity oAuthIdentity = await user.GenerateUserIdentityAsync(userManager,
               OAuthDefaults.AuthenticationType);
            ClaimsIdentity cookiesIdentity = await user.GenerateUserIdentityAsync(userManager,
                CookieAuthenticationDefaults.AuthenticationType);

            AuthenticationProperties properties = CreateProperties(user.UserName, tenant);
            AuthenticationTicket ticket = new AuthenticationTicket(oAuthIdentity, properties);
            context.Validated(ticket);
            context.Request.Context.Authentication.SignIn(cookiesIdentity);
    }

    public override Task TokenEndpoint(OAuthTokenEndpointContext context)
        {
            foreach (KeyValuePair<string, string> property in context.Properties.Dictionary)
            {
                context.AdditionalResponseParameters.Add(property.Key, property.Value);
            }

            return Task.FromResult<object>(null);
        }

        public override Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            // Resource owner password credentials does not provide a client ID.
            if (context.ClientId == null)
            {
                context.Validated();
            }

            return Task.FromResult<object>(null);
        }

        public override Task ValidateClientRedirectUri(OAuthValidateClientRedirectUriContext context)
        {
            if (context.ClientId == _publicClientId)
            {
                Uri expectedRootUri = new Uri(context.Request.Uri, "/");

                if (expectedRootUri.AbsoluteUri == context.RedirectUri)
                {
                    context.Validated();
                }
            }

            return Task.FromResult<object>(null);
        }

        public static AuthenticationProperties CreateProperties(string userName, string tenant)
        {
            IDictionary<string, string> data = new Dictionary<string, string>
            {
                { "userName", userName },
            };
            if (!string.IsNullOrWhiteSpace(tenant))
                data.Add("tenant", tenant);
            return new AuthenticationProperties(data);
        }
    }
}