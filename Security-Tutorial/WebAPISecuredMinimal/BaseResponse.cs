﻿namespace WebAPISecuredMinimal
{
    public class BaseResponse
    {
        /// <summary>
        /// Provides the UPN of the current user
        /// </summary>
        /// <value>The value of the current user's UPN</value>
        public string CurrentUserUPN { get; set; }

        /// <summary>
        /// Provides the App ID of the consumer app
        /// </summary>
        /// <value>The value of the App ID of the consumer app</value>
        public string ConsumerAppId { get; set; }

        /// <summary>
        /// Provides the date and time of the response
        /// </summary>
        /// <value>The date and time of the response</value>
        public DateTime ResponseDateTime { get; set; } = DateTime.Now;
    }
}
