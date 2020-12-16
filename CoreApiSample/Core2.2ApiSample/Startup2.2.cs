using System;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using SampleAuthAPI.CoreApiSample.Shared;
using SampleAuthAPI.CoreApiSample.Handlers;
using AutoMapper;

namespace SampleAuthAPI.CoreApiSample
{
    public class Startup
    {
        private IConfiguration Configuration { get; }
        public Startup(IConfiguration cfg)
        {
            Configuration = cfg;
        }
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<DBContext>(options => DBContext.BuildOptions(options));
            services.AddCors();
            //services.AddControllers(); //this is the core3.1 method not available in 2.2 (where the AddMvc used)
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
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_2); //core 2.2 only (in core3.1 AddControllers used instead)
        }

        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
                app.UseDeveloperExceptionPage();
            else
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();

            //app.UseRouting(); //-- core 3.1 only, no such method in 2.2
            app.UseCors(c => c
                .AllowAnyOrigin()
                .AllowAnyMethod()
                .AllowAnyHeader());

            app.UseAuthentication();
            //app.UseAuthorization(); //core 3.1 only, no such method in 2.2
            // For legacy support, adding these reroutings, as the actions are not always called on the correct controller.
            app.UseMvc(routes =>
            {
                routes.MapRoute(
                   name: "Token", template: "token",
                   defaults: new { controller = "Account", action = "DoAuth" });
                routes.MapRoute(
                    name: "GenerateToken", template: "api/user/GenerateToken",
                    defaults: new { controller = "Account", action = "GenerateToken", });
                routes.MapRoute(
                    name: "CreateUser", template: "api/account/createuser",
                    defaults: new { controller = "User", action = "CreateUser", });
                routes.MapRoute(
                    name: "CreateTenant", template: "api/account/createtenant",
                    defaults: new { controller = "Tenant", action = "CreateTenant", });
                routes.MapRoute(
                    name: "Validate", template: "api/account/ValidateIzendaAuthToken",
                    defaults: new { controller = "account", action = "ValidateIzendaAuthToken", });
                routes.MapRoute(
                    name: "nonapidefault",
                    template: "{controller}/{action=Index}/{id?}");
                routes.MapRoute("default", "api/{controller=Home}/{action=Index}/{id?}");
            });
        }
    }
}
