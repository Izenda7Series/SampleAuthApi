﻿using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using SampleAuthAPI.CoreApiSample.Shared;

namespace SampleAuthAPI.CoreApiSample
{
    public class Program
    {
        public static void Main(string[] args)
        {
            CreateHostBuilder(args, Utilities.GetStartupUrls(args)).Build().Run();
        }

        public static IHostBuilder CreateHostBuilder(string[] args, string urls) =>
            Host.CreateDefaultBuilder(args)
                .ConfigureWebHostDefaults(webBuilder =>
                {
                    webBuilder.UseStartup<Startup>()
                        .UseUrls(urls);
                });
    }
}
