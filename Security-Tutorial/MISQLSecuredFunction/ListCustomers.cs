using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Data.SqlClient;
using System.Collections.Generic;
using System.Security.Cryptography;
using Azure.Identity;

namespace MISQLSecuredFunction
{
    public static class ListCustomers
    {
        [FunctionName("ListCustomers")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function ListCustomers received a request.");

            var result = new List<Customer>();

            try
            {
                using (SqlConnection cn = new SqlConnection(Environment.GetEnvironmentVariable("SecuredDbConnection")))
                {
#if DEBUG
                    var credential = new DefaultAzureCredential();
                    var token = credential.GetToken(new Azure.Core.TokenRequestContext(new[] { "https://database.windows.net//.default" }));
                    cn.AccessToken = token.Token;
#endif

                    var cmd = new SqlCommand("SELECT * FROM Customers", cn);
                    await cn.OpenAsync();

                    using (var rows = await cmd.ExecuteReaderAsync())
                    {
                        while (await rows.ReadAsync())
                        {
                            result.Add(new Customer
                            {
                                CustomerId = rows[0].ToString(),
                                DisplayName = rows[1].ToString(),
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                log.LogError(ex, "Error while invoking function ListCustomers.");
            }

            log.LogInformation("C# HTTP trigger function ListCustomers processed a request.");

            return new OkObjectResult(result);
        }
    }
}
