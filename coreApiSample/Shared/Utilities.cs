using Microsoft.Extensions.Configuration;
using Microsoft.EntityFrameworkCore;
using System.Linq;

namespace SampleAuthAPI.coreApiSample.Shared
{
    public static class Utilities
    {
        public static string GetStartupUrls(string[] args)
        {
            string portNum = "4000";

            string buf = args.FirstOrDefault(a => a.ToLower().Contains("--port="));
            if (string.IsNullOrEmpty(buf)) // if the port is not defined in the args - use the one from the appsettings
            {
                IConfigurationRoot config = GetConfig();
                buf = config["AppSettings:AuthPort"];
                // if the value is not found here, try the legacy section, just in case.
                if (string.IsNullOrEmpty(buf))
                    buf = config["AppSettings:Settings:AuthPort"];
                if (!string.IsNullOrEmpty(buf))
                    portNum = buf;
            }
            else // if the port is defined in args - use that port;
                portNum = buf.Split('=')[1];

            return "http://localhost:" + portNum;
        }
        public static string GetConnectionString()
        {
            return GetConfig().GetConnectionString("DefaultConnection");
        }
        public static string GetDefaultPassword() {
            return GetConfig()["AppSettings:DefaultPassword"];
        }
        public static string GetDBType()
        {
            return GetConfig()["AppSettings:DBType"].ToLower();
        }
        private static IConfigurationRoot GetConfig()
        {
            return new ConfigurationBuilder()
                    .AddJsonFile("appsettings.json", optional: false)
                    .Build();
        }
        /// <summary>
        /// this helper method returns new DBContext instance.
        /// make sure to use it in using (... statement.
        /// </summary>
        /// <returns>new DBContext</returns>
        public static DBContext GetDB()
        {
            DbContextOptionsBuilder ob = new DbContextOptionsBuilder<DBContext>();
            DBContext.BuildOptions(ob);
            return new DBContext(ob.Options);
        }
    }
}