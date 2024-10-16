using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Azure.Identity;
using Microsoft.Graph;
using System.Collections.Generic;

namespace MIMicrosoftGraphFunction
{
    public static class ListUsersFunction
    {
        [FunctionName("ListUsers")]
        public static async Task<IActionResult> Run(
            [HttpTrigger(AuthorizationLevel.Function, "get", Route = null)] HttpRequest req,
            ILogger log)
        {
            log.LogInformation("C# HTTP trigger function ListUsers received a request.");

            // Create the Graph service client with a ChainedTokenCredential which gets an access
            // token using the available Managed Identity or Visual Studio debug settings if running
            // in development.
            var credential = new ChainedTokenCredential(
                new ManagedIdentityCredential(),
                new VisualStudioCredential());

            string[] scopes = new[] { "https://graph.microsoft.com/.default" };

            var graphServiceClient = new GraphServiceClient(
                credential, scopes);

            var result = new List<GraphUserResult>();
            try
            {
                var users = await graphServiceClient.Users.GetAsync();
                foreach (var u in users.Value)
                {
                    var user = new GraphUserResult();
                    user.UserPrincipalName = u.UserPrincipalName;
                    user.DisplayName = u.DisplayName;
                    user.Mail = u.Mail;
                    user.ObjectId = u.Id;

                    result.Add(user);
                }
            }
            catch (Exception)
            {
                return new StatusCodeResult(500);
            }

            log.LogInformation("C# HTTP trigger function ListUsers processed a request.");

            return new OkObjectResult(result);
        }
    }
}
