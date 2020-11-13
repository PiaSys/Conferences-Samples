using OfficeDevPnP.Core.Framework.Provisioning.Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace PiaSys.Team.Provisioning.TemplatesProvider
{
    /// <summary>
    /// Defines the basic interface for every templates provider
    /// </summary>
    public interface ITemplatesProvider
    {
        /// <summary>
        /// Provides a Provisioning Template Hierarchy object instance based on a provided URI
        /// </summary>
        /// <param name="templateUri">The URI of the Provisioning Template in SPO</param>
        /// <returns>The Provisioning Template Hierarchy instance, if any</returns>
        /// <remarks>Return NULL if the template is missing or not valid</remarks>
        ProvisioningHierarchy GetTenantTemplate(string templateUri);
    }
}
