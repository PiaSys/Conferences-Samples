using System;
using System.Collections.Generic;
using System.Text;

namespace Graph_Register_App
{
    public class App
    {
        public Guid? id { get; set; }

        public Guid? appId { get; set; }

        public string displayName { get; set; }

        public RequiredResourceAccess[] requiredResourceAccess { get; set; }
    }

    public class RequiredResourceAccess
    {
        public Guid resourceAppId { get; set; }

        public ResourceAccess[] resourceAccess { get; set; }
    }

    public class ResourceAccess
    {
        public Guid id { get; set; }

        public string type { get; set; }
    }
}
