using Microsoft.AspNetCore;
using Microsoft.AspNetCore.Hosting;
using SampleAuthAPI.CoreApiSample.Shared;

namespace SampleAuthAPI.CoreApiSample
{
    public class Program
    {
        public static void Main(string[] args)
        {
            System.Console.WriteLine("Running under core 2.2");
            CreateWebHostBuilder(args, Utilities.GetStartupUrls(args)).Build().Run();
        }

        public static IWebHostBuilder CreateWebHostBuilder(string[] args, string urls) =>
            WebHost.CreateDefaultBuilder(args)
                .UseStartup<Startup>().UseUrls(urls);
    }
}
