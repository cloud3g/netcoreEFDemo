using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Model;

namespace FEDAS
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);

            //mysql
            //services.AddDbContext<demo_netcoreContext>(options => options.UseMySql(Configuration.GetConnectionString("MySqlConnection")));//"ConnectionStrings": {"MySqlConnection": "Database='***';Data Source=****;User ID=***;Password=***;CharSet=utf8;SslMode=None"}

            //mssql
            services.AddDbContext<demo_netcoreContext>(option =>
            {
                option.UseSqlServer("Data Source =.; Initial Catalog=demo_netcore; User ID=sa; Password=pwd");
                //option.UseSqlServer("Server =.; Database = demo_netcore; User ID = sa; Password = pwd;");
            });

            //mssql
            //services.AddDbContext<demo_netcoreContext>(option => {
            //    option.UseSqlServer(Configuration.GetConnectionString("mssqlConn"));//appsettings.json //"ConnectionStrings": {"mssqlConn": "Database='demo_netcore';Data Source=.;User ID=sa;Password=pwd;"}
            //});
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseMvc();
        }
    }
}
