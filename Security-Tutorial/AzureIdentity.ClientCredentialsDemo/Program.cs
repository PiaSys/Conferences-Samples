// See https://aka.ms/new-console-template for more information
using Azure.Identity;
using Microsoft.Graph;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using AzureIdentity.ClientCredentialsDemo;
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

ClientSecretCredential credential = new ClientSecretCredential(
    settings.TenantId, settings.ClientId, settings.ClientSecret);

try
{
    // Call Microsoft Graph using the Graph SDK
    GraphServiceClient graphServiceClient = new GraphServiceClient(credential);
    var users = await graphServiceClient.Users.GetAsync();
    Console.WriteLine($"{users.Value.Count} users");
}
catch (ServiceException e)
{
    Console.WriteLine("We could not retrieve the user's list: " + $"{e}");
}
