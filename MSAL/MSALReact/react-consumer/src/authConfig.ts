export const msalConfig = {
    auth: {
      clientId: "YOUR_CLIENT_ID",
      authority: "https://login.microsoftonline.com/YOUR_TENANT_ID",
      redirectUri: "http://localhost:3000",
    },
    cache: {
      cacheLocation: "localStorage", // This configures where your cache will be stored
      storeAuthStateInCookie: true, // Set this to "true" if you are having issues on IE11 or Edge
    },
  };
  
export const loginRequest = {
    scopes: ["User.Read"],
  };
  
export const apiTokenRequest = {
    scopes: ["api://msal.react.restapi/RestApi.Consumer.ReadWrite"],
  };