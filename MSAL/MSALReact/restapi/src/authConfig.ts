export const msalConfig = {
    auth: {
      clientId: "YOUR_API_CLIENT_ID",
      authority: "https://login.microsoftonline.com/TENANT_ID",
      clientSecret: "YOUR_API_CLIENT_SECRET",
    },
    system: {
      loggerOptions: {
        loggerCallback(loglevel: any, message: any, containsPii: any) {
          console.log(message);
        },
        piiLoggingEnabled: false,
        logLevel: "Verbose",
      },
    },
  };
  
  export const tokenValidationConfig = {
    issuer: "https://login.microsoftonline.com/TENANT_ID/v2.0",
    audience: "YOUR_API_CLIENT_ID", 
  };