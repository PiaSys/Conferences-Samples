using System;
using System.IO;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions.Http;
using Microsoft.AspNetCore.Http;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Microsoft.Azure.WebJobs.Extensions.OpenApi.Core.Attributes;
using Microsoft.Azure.WebJobs.Extensions.OpenApi.Core.Enums;
using Microsoft.OpenApi.Models;
using System.Net;
using Microsoft.Azure.Functions.Worker.Http;
using Azure.Core;
using System.Linq;

namespace MICustomApplications.Provider
{
    public class ListProducts
    {
        private readonly ILogger _logger;

        public ListProducts(ILoggerFactory loggerFactory)
        {
            _logger = loggerFactory.CreateLogger<ListProducts>();
        }

        [FunctionName("ListProducts")]
        [OpenApiOperation(operationId: "ListProducts", tags: new[] { "Custom" })]
        [OpenApiResponseWithBody(statusCode: HttpStatusCode.OK, contentType: "application/json", bodyType: typeof(Products), Description = "List of products")]
        [OpenApiSecurity("bearer_auth", SecuritySchemeType.Http, Scheme = OpenApiSecuritySchemeType.Bearer, BearerFormat = "JWT")]
        [FunctionAuthorize(Roles = new string[] { "Provider.Consume" }, RunOnBehalfOf = false)]
        public async Task<HttpResponseData> Run(
            [HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = null)] HttpRequestData req)
        {
            _logger.LogInformation("C# HTTP trigger function ListProducts received a request.");

            var result = new Products();
            result.Items = new System.Collections.Generic.List<Product>(
                (from p in Enumerable.Range(1, 10)
                select new Product
                {
                    Code = $"PROD{p:00}",
                    Description = $"Product {p:00}",
                    Price = 10 * p * Random.Shared.Next(10, 30)
                })
            );

            // And get the security context
            var principalFeature = req.FunctionContext.Features.Get<JwtPrincipalFeature>();

            // Set the caller App ID
            result.ConsumerId = principalFeature.Principal.Claims.FirstOrDefault(c => c.Type == ClaimTypes.AppIdClaimType)?.Value;

            _logger.LogInformation("C# HTTP trigger function ListProducts processed a request.");

            // Build and send the response
            var response = req.CreateResponse(HttpStatusCode.OK);
            await response.WriteAsJsonAsync(result);

            return response;
        }
    }
}
