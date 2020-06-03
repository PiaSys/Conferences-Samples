using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Microsoft.EntityFrameworkCore;
using System.Configuration;
using LobSample.DomainModel;
using System.Linq;
using Microsoft.Extensions.Configuration;

namespace LobSample
{
    public static class LobFunction
    {
        [FunctionName("LobFunction")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", "post", Route = null)] HttpRequest req,
            ExecutionContext context,
            ILogger log)
        {
            log.LogInformation("LobFunction triggered!");

            var configuration = new ConfigurationBuilder()
                .SetBasePath(context.FunctionAppDirectory)
                .AddJsonFile("local.settings.json", optional: true, reloadOnChange: true)
                .AddEnvironmentVariables()
                .Build();

            var connectionString = configuration.GetConnectionString("CrmContext");

            var options = new DbContextOptionsBuilder<CrmContext>();
            options.UseSqlServer(connectionString);
            var db = new CrmContext(options.Options);
            await db.Database.EnsureCreatedAsync();

            var customers = await db.Customers.ToListAsync();

            return new OkObjectResult(customers);
        }
    }
}
