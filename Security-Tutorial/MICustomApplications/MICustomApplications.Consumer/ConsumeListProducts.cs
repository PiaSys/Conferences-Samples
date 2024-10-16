using System.Net;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using Azure.Identity;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Azure.Functions.Worker.Http;
using Microsoft.Extensions.Logging;

namespace MICustomApplications.Consumer
{
    public class ConsumeListProducts
    {
        private readonly ILogger _logger;
        private readonly IHttpClientFactory _httpClientFactory;
        private static readonly Version DefaultVersion = new Version(2, 0);

        public ConsumeListProducts(ILoggerFactory loggerFactory, IHttpClientFactory httpClientFactory)  
        {
            _logger = loggerFactory.CreateLogger<ConsumeListProducts>();
            _httpClientFactory = httpClientFactory;
        }

        [Function("ConsumeListProducts")]
        public async Task<HttpResponseData> Run([HttpTrigger(AuthorizationLevel.Function, "get")] HttpRequestData req)
        {
            _logger.LogInformation("C# HTTP trigger function ConsumeListProducts received a request.");

            Products products = null;
            string errorMessage = null;

            try
            {
                var apiUrl = Environment.GetEnvironmentVariable("MICustomApplications.Provider.Url");
                var credential = new DefaultAzureCredential();

                string[] scopes = new[] { "api://piasys-security-tutorial-provider/.default" };

                var tokenResponse = await credential.GetTokenAsync(new Azure.Core.TokenRequestContext(scopes));
                var accessToken = tokenResponse.Token;

                var request = new HttpRequestMessage
                {
                    RequestUri = new Uri($"{apiUrl}api/ListProducts", UriKind.Absolute),
                    Version = DefaultVersion,
                    Method = HttpMethod.Get
                };

                request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

                var httpClient = _httpClientFactory.CreateClient();
                var productsResponse = await httpClient.SendAsync(request);
                var productsString = await productsResponse.Content.ReadAsStringAsync();

                products = JsonSerializer.Deserialize<Products>(productsString, new JsonSerializerOptions
                {
                    PropertyNameCaseInsensitive = true,
                });
            }
            catch (Exception ex)
            {
                errorMessage = ex.Message;
            }

            var response = req.CreateResponse(products != null ? HttpStatusCode.OK : HttpStatusCode.InternalServerError);
            if (products != null) {
                await response.WriteAsJsonAsync(products);
            }

            _logger.LogInformation("C# HTTP trigger function ConsumeListProducts processed a request.");

            return response;
        }
    }
}
