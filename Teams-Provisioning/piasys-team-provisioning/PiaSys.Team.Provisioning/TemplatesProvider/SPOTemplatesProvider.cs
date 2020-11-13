using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.Logging;
using Microsoft.SharePoint.Client;
using OfficeDevPnP.Core.Framework.Provisioning.Connectors;
using OfficeDevPnP.Core.Framework.Provisioning.Model;
using OfficeDevPnP.Core.Framework.Provisioning.Providers;
using OfficeDevPnP.Core.Framework.Provisioning.Providers.Xml;

namespace PiaSys.Team.Provisioning.TemplatesProvider
{
    public class SPOTemplatesProvider : ITemplatesProvider
    {
        public ProvisioningHierarchy GetTenantTemplate(string templateUri)
        {
            // Get the URL of the Templates repository Site Collection
            var targetSiteUrl = SPOUtilities.GetSiteCollectionRootUrl(templateUri);

            // Connect to the Templates repository Site Collection
            using (var context = SPOContextProvider.BuildAppOnlyClientContext(targetSiteUrl))
            {
                // Get a reference to the target library
                Web web = context.Web;

                web.EnsureProperty(w => w.Url);

                var packageFileName = templateUri.Substring(templateUri.LastIndexOf("/") + 1);

                // Configure the SharePoint Connector
                var sharepointConnector = new SharePointConnector(context, web.Url,
                    Environment.GetEnvironmentVariable("TemplatesLibrary"));

                TemplateProviderBase provider = null;

                // Configure the initial template file name
                String xmlTemplateFileName = packageFileName;

                // If the target is a .PNP Open XML template
                if (packageFileName.ToLower().EndsWith(".pnp", StringComparison.InvariantCultureIgnoreCase))
                {
                    // Configure the Open XML provider for SharePoint
                    OpenXMLConnector openXmlConnector = new OpenXMLConnector(packageFileName, sharepointConnector);
                    provider = new XMLOpenXMLTemplateProvider(openXmlConnector);

                    // Get the .xml provisioning template file name
                    xmlTemplateFileName = !String.IsNullOrEmpty(openXmlConnector.Info?.Properties?.TemplateFileName) ?
                        openXmlConnector.Info?.Properties?.TemplateFileName :
                        packageFileName.Substring(packageFileName.LastIndexOf('/') + 1)
                        .Replace(".pnp", ".xml");
                }
                else
                {
                    // Otherwise use the .XML template provider for SharePoint
                    provider =
                        new XMLSharePointTemplateProvider(context, web.Url,
                            Environment.GetEnvironmentVariable("TemplatesLibrary"));
                }

                // Get the template
                ProvisioningHierarchy tenantTemplate = provider.GetHierarchy(xmlTemplateFileName);
                tenantTemplate.Connector = provider.Connector;

                return (tenantTemplate);
            }
        }
    }
}
