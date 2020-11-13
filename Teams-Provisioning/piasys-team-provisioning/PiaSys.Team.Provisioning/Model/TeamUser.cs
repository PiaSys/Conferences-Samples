using System;
using System.Collections.Generic;
using System.Text;

namespace PiaSys.Team.Provisioning.Model
{
    public class TeamUser
    {
        public string Claims { get; set; }

        public string UPN
        {
            get
            {
                return (!string.IsNullOrEmpty(this.Claims) ?
                    this.Claims.Substring(this.Claims.LastIndexOf('|') + 1) :
                    null
                    );
            }
        }
    }

}
