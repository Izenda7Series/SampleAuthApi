using Microsoft.EntityFrameworkCore;
using SampleAuthAPI.CoreApiSample.Models;

namespace SampleAuthAPI.CoreApiSample.Shared
{
    public class DBContext : DbContext
    {
        public DBContext(DbContextOptions options) : base(options)
        {
        }
        public DbSet<AspNetUser> AspNetUsers { get; set; }
        public DbSet<Tenant> Tenants { get; set; }
        
        #region helpers
        public static void BuildOptions(DbContextOptionsBuilder options)
        {
            string dbType = Utilities.GetDBType();
            switch (dbType)
            {
                case ("sql"):
                    options.UseSqlServer(Utilities.GetConnectionString());
                    break;
                case ("pgsql"):
                    options.UseNpgsql(Utilities.GetConnectionString());
                    break;
                case ("mysql"):
                    options.UseMySQL(Utilities.GetConnectionString());
                    break;
                default:
                    options.UseSqlServer(Utilities.GetConnectionString());
                    break;
            }
        }
        #endregion
    }










    public class pgDBContext : DbContext
    {
        public pgDBContext(DbContextOptions options) : base(options)
        {
        }
        public DbSet<AspNetUser> AspNetUsers { get; set; }
        public DbSet<Tenant> Tenants { get; set; }
    }

}