using Microsoft.SharePoint.Client;
using OfficeDevPnP.Core;
using System;
using System.Collections.Generic;
using System.Text;

namespace PiaSys.Team.Provisioning
{
    /// <summary>
    /// Helper static class used to create a ClientContext instance for the current function instance
    /// </summary>
    public static class SPOContextProvider
    {
        /// <summary>
        /// Creates an App-Only ClientContext instance for a target Site
        /// </summary>
        /// <param name="targetSiteUrl">The URL of the target SPO Site</param>
        /// <returns></returns>
        public static ClientContext BuildAppOnlyClientContext(string targetSiteUrl)
        {
            var am = new AuthenticationManager();
            var result = am.GetAzureADAppOnlyAuthenticatedContext(targetSiteUrl,
                Environment.GetEnvironmentVariable("ClientId"),
                Environment.GetEnvironmentVariable("Tenant"),
                System.Security.Cryptography.X509Certificates.StoreName.My,
                System.Security.Cryptography.X509Certificates.StoreLocation.CurrentUser,
                Environment.GetEnvironmentVariable("Thumbprint"));

            return (result);
        }
    }
}
