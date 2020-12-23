using System;
using System.Net.Http;
using Microsoft.Azure.Functions.Extensions.DependencyInjection;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using PiaSys.YoTeamsSSO.Backend;
using PnP.Core.Auth.Services.Builder.Configuration;
using PnP.Core.Services.Builder.Configuration;

[assembly: FunctionsStartup(typeof(Startup))]

namespace PiaSys.YoTeamsSSO.Backend
{
    public class Startup : FunctionsStartup
    {
        public override void Configure(IFunctionsHostBuilder builder)
        {
            var config = builder.GetContext().Configuration;
            var services = builder.Services;
            
            // Add the PnP Core SDK library
            services.AddPnPCore();
        }
    }
}