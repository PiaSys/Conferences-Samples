using AngleSharp;
using Microsoft.Azure.Functions.Extensions.DependencyInjection;
using Microsoft.Extensions.DependencyInjection;
using PiaSys.Team.Provisioning;
using PiaSys.Team.Provisioning.TemplatesProvider;
using System;
using System.Collections.Generic;
using System.Text;

[assembly: FunctionsStartup(typeof(Startup))]
namespace PiaSys.Team.Provisioning
{
    public class Startup : FunctionsStartup
    {
        public override void Configure(IFunctionsHostBuilder builder)
        {
            builder.Services.AddSingleton<ITemplatesProvider, SPOTemplatesProvider>();
        }
    }
}
