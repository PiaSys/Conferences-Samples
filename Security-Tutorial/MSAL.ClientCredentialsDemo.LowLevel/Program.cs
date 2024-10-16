using Microsoft.Identity.Client;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using MSAL.ClientCredentialsDemo.LowLevel;
using Microsoft.Extensions.Options;

// Create a configuration object from appsettings.json
var configuration = new ConfigurationBuilder()
    .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .AddUserSecrets<Program>()
    .Build();

// Create a service collection and register the configuration and settings
var services = new ServiceCollection();
services.AddSingleton<IConfiguration>(configuration);
services.Configure<EntraIdSettings>(configuration.GetSection("EntraId"));

// Build the service provider and get the settings
var serviceProvider = services.BuildServiceProvider();
var settings = serviceProvider.GetRequiredService<IOptions<EntraIdSettings>>().Value;

var authority = $"https://login.microsoftonline.com/{settings.TenantId}";

IConfidentialClientApplication app = ConfidentialClientApplicationBuilder.Create(settings.ClientId)
           .WithClientSecret(settings.ClientSecret)
           .WithAuthority(new Uri(authority))
           .Build();

var result = await app
    .AcquireTokenForClient(new string[] { "https://graph.microsoft.com/.default" })
    .ExecuteAsync();

Console.WriteLine(result.AccessToken);
