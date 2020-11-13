using System;
using System.Collections.Generic;
using System.Text;

namespace PiaSys.Team.Provisioning.Model
{
    public class TeamProvisionRequest
    {
        public string TeamTitle { get; set; }

        public string TeamAlias { get; set; }

        public TeamUser[] TeamOwners { get; set; }

        public TeamUser[] TeamMembers { get; set; }

        public string TeamTemplateUri { get; set; }

        public string RequestSiteUrl { get; set; }
    }

}
