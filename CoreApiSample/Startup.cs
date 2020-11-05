using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using SampleAuthAPI.CoreApiSample.Shared;
using SampleAuthAPI.CoreApiSample.Handlers;
using AutoMapper;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using System;

namespace SampleAuthAPI.CoreApiSample
{
    public class Startup
    {
        private readonly IWebHostEnvironment Environment;
        private readonly IConfiguration Configuration;

        public Startup(IWebHostEnvironment env, IConfiguration cfg)
        {
            Environment = env;
            Configuration = cfg;
        }

        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<DBContext>(options => DBContext.BuildOptions(options));
            services.AddCors();
            services.AddControllers();
            services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());

            IConfigurationSection settings = Configuration.GetSection("AppSettings");
            services.Configure<AppSettings>(settings);

            AppSettings appSettings = settings.Get<AppSettings>();
            byte[] key = Encoding.ASCII.GetBytes(appSettings.RSAPrivateKey);
            services.AddAuthentication(a =>
            {
                a.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                a.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            })
            .AddJwtBearer(b =>
            {
                b.Events = new JwtBearerEvents
                {
                    OnTokenValidated = context =>
                    {
                        IUserHandler hnd = context.HttpContext.RequestServices.GetRequiredService<IUserHandler>();

                        Models.AspNetUser user = hnd.GetByName(context.Principal.Identity.Name);
                        if (user == null)
                            context.Fail("Not authorized");

                        return Task.CompletedTask;
                    }
                };
                b.RequireHttpsMetadata = false;
                b.SaveToken = true;
                b.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    IssuerSigningKey = new SymmetricSecurityKey(key),
                    ValidateIssuer = false,
                    ValidateAudience = false
                };
            });

            services.AddScoped<IUserHandler, UserHandler>();
            services.AddRazorPages();
        }

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, DBContext dataContext)
        {
            if (Environment.IsDevelopment())
                app.UseDeveloperExceptionPage();

            app.UseRouting();

            app.UseCors(c => c
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader());

            app.UseAuthentication();
            app.UseAuthorization();

            // For legacy support, adding these reroutings, as the actions are not always called on the correct controller.
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "Token",
                    pattern: "token",
                    defaults: new { controller = "Account", action = "DoAuth", });
                endpoints.MapControllerRoute(
                    name: "GenerateToken", pattern: "api/user/GenerateToken",
                    defaults: new { controller = "Account", action = "GenerateToken", });
                endpoints.MapControllerRoute(
                    name: "CreateUser", pattern: "api/account/createuser",
                    defaults: new { controller = "User", action = "CreateUser", });
                endpoints.MapControllerRoute(
                    name: "CreateUser", pattern: "api/account/createtenant",
                    defaults: new { controller = "Tenant", action = "CreateTenant", });
                endpoints.MapControllerRoute(
                    name: "nonapidefault",
                    pattern: "{controller}/{action=Index}/{id?}");
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "api/{controller}/{action=Index}/{id?}");
                endpoints.MapRazorPages();
            });
        }
    }
}
