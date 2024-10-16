#define USE_POLLY

using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;
using Polly;
using Microsoft.Identity.Client;
using System.Net.Http.Headers;
using Polly.Extensions.Http;
using System.Net;

namespace DotNetThrottlingGraph
{
    class Program
    {
        public static async Task Main(string[] args)
        {
            var host = Host.CreateDefaultBuilder()
                .ConfigureLogging((hostingContext, logging) =>
                {
                    logging.AddEventSourceLogger();
                    logging.AddConsole();
                })
                .ConfigureServices((hostingContext, services) =>
                {
                    // Read the configuration from appsettings.json
                    DemoConfiguration config = new DemoConfiguration();
                    hostingContext.Configuration.Bind("Authentication", config.PublicClientApplicationOptions);
                    config.MicrosoftGraphBaseEndpoint = hostingContext.Configuration.GetValue<string>("WebAPI:MicrosoftGraphBaseEndpoint");

                    // Prepare MSAL PublicClientApplication instance to get delegated access tokens
                    IPublicClientApplication publicClientApplication = PublicClientApplicationBuilder
                        .CreateWithApplicationOptions(config.PublicClientApplicationOptions)
                        .WithDefaultRedirectUri()
                        .Build();
                    services.AddSingleton(publicClientApplication);

#if USE_POLLY
                    services.AddHttpClient("graphClient", c =>
                    {
                        c.BaseAddress = new Uri(config.MicrosoftGraphBaseEndpoint);
                    })
                    // Add Polly policies for retry and backoff
                    .AddPolicyHandler(CustomRetryPolicy());
#else
                    services.AddHttpClient("graphClient", c =>
                    {
                        c.BaseAddress = new Uri(config.MicrosoftGraphBaseEndpoint);
                    });
#endif

                })
                // Let the builder know we're running in a console
                .UseConsoleLifetime()
                // Add services to the container
                .Build();

            await host.StartAsync();

            using (var scope = host.Services.CreateScope())
            {
                // Get an HttpClient instance from the factory
                var httpClient = scope.ServiceProvider.GetService<IHttpClientFactory>().CreateClient("graphClient");

                // Get the MSAL PublicClientApplication singleton
                var publicClientApplication = scope.ServiceProvider.GetService<IPublicClientApplication>();

                // Configure the Access Token for the request
                await ConfigureAccessToken(httpClient, publicClientApplication).ConfigureAwait(false);

                // Make a GET request
                var response = await httpClient.GetAsync("/v1.0/me");

                try
                {
                    response.EnsureSuccessStatusCode();

                    var content = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(content);
                }
                catch (HttpRequestException ex) when (ex.StatusCode == System.Net.HttpStatusCode.TooManyRequests) {
                    Console.ForegroundColor = ConsoleColor.Red;
                    await Console.Out.WriteLineAsync("You've been throttled!");
                    Console.ResetColor();
                }
            }
        }

        private static async Task ConfigureAccessToken(HttpClient httpClient, IPublicClientApplication? publicClientApplication)
        {
            // Get a delegated access token from the MSAL PublicClientApplication singleton
            var scopes = new string[] { "User.Read" };

            AuthenticationResult tokenResult = null;

            // Try to see if we already have an account in the cache
            var account = await publicClientApplication.GetAccountsAsync().ConfigureAwait(false);
            try
            {
                // Try to get the token from the tokens cache
                tokenResult = await publicClientApplication.AcquireTokenSilent(scopes, account.FirstOrDefault())
                    .ExecuteAsync().ConfigureAwait(false);
            }
            catch (MsalUiRequiredException)
            {
                // Try to get the token directly through AAD if it is not available in the tokens cache
                tokenResult = await publicClientApplication.AcquireTokenInteractive(scopes)
                    .ExecuteAsync().ConfigureAwait(false);
            }

            // Output the Access Token for the sake of reading it with http://jwt.ms
            var accessToken = tokenResult.AccessToken;

            if (httpClient.DefaultRequestHeaders.Accept == null || !httpClient.DefaultRequestHeaders.Accept.Any(m => m.MediaType == "application/json"))
            {
                httpClient.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            }
            httpClient.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("bearer", accessToken);
        }

        private static IAsyncPolicy<HttpResponseMessage> CustomRetryPolicy()
        {
            return HttpPolicyExtensions
                // Retry in case of transient errors
                .HandleTransientHttpError()
                .OrResult(r => r.StatusCode == HttpStatusCode.TooManyRequests)
                .OrResult(r => r.Headers?.RetryAfter != null)
                // Retry up to 5 times (4 times + the first attempt)
                // with Retry-After if available or with an exponential backoff of 400ms x retry count
                .WaitAndRetryAsync(4, (retryCount, response, context) =>
                    {
                        return response.Result?.Headers?.RetryAfter?.Delta.Value ?? TimeSpan.FromMilliseconds(400 * retryCount);
                    },
                    onRetryAsync: (e, ts, i, ctx) => Task.CompletedTask);
        }
    }
}