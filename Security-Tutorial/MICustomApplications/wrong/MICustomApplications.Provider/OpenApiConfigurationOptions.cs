﻿using Microsoft.Azure.WebJobs.Extensions.OpenApi.Core.Abstractions;
using Microsoft.Azure.WebJobs.Extensions.OpenApi.Core.Enums;
using Microsoft.OpenApi.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Contoso.Retail.Demo.Backend
{
    public class OpenApiConfigurationOptions : IOpenApiConfigurationOptions
    {
        public OpenApiInfo Info { get; set; } =
          new OpenApiInfo
          {
              Title = "PiaSys.Security.Tutorial.Provider",
              Version = "1.0",
              Description = "PiaSys.Security.Tutorial.Provider documentation",
              Contact = new OpenApiContact()
              {
                  Name = "PiaSys.com",
                  Url = new Uri("https://piasys.com/"),
              },
              License = new OpenApiLicense()
              {
                  Name = "MIT",
                  Url = new Uri("http://opensource.org/licenses/MIT"),
              }
          };

        public List<OpenApiServer> Servers { get; set; } = new();

        public OpenApiVersionType OpenApiVersion { get; set; } = OpenApiVersionType.V3;

        public bool IncludeRequestingHostName { get; set; } = false;
        public bool ForceHttp { get; set; } = false;
        public bool ForceHttps { get; set; } = true;
        public List<IDocumentFilter> DocumentFilters { get; set; } = new();
    }
}
