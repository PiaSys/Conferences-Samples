/**
 * Configuration object to be passed to MSAL instance on creation. 
 * For a full list of MSAL.js configuration parameters, visit:
 * https://github.com/AzureAD/microsoft-authentication-library-for-js/blob/dev/lib/msal-browser/docs/configuration.md 
 */

const msalConfig = {
    auth: {
        clientId: 'fa214062-34fa-46ff-9c20-8a9d9ad2a019', // This is the ONLY mandatory field that you need to supply.
        authority: 'https://login.microsoftonline.com/6c94075a-da0a-4c6a-8411-badf652e8b53', // Defaults to "https://login.microsoftonline.com/common"
        redirectUri: '/', // You must register this URI on Azure Portal/App Registration. Defaults to window.location.href e.g. http://localhost:3000/
        navigateToLoginRequestUrl: true, // If "true", will navigate back to the original request location before processing the auth code response.
    },
    cache: {
        cacheLocation: 'sessionStorage', // Configures cache location. "sessionStorage" is more secure, but "localStorage" gives you SSO.
        storeAuthStateInCookie: false, // set this to true if you have to support IE
    },
    system: {
        loggerOptions: {
            loggerCallback: (level, message, containsPii) => {
                if (containsPii) {
                    return;
                }
                switch (level) {
                    case msal.LogLevel.Error:
                        console.error(message);
                        return;
                    case msal.LogLevel.Info:
                        console.info(message);
                        return;
                    case msal.LogLevel.Verbose:
                        console.debug(message);
                        return;
                    case msal.LogLevel.Warning:
                        console.warn(message);
                        return;
                }
            },
        },
    },
};

/**
 * Scopes you add here will be prompted for user consent during sign-in.
 * By default, MSAL.js will add OIDC scopes (openid, profile, email) to any login request.
 * For more information about OIDC scopes, visit: 
 * https://docs.microsoft.com/en-us/azure/active-directory/develop/v2-permissions-and-consent#openid-connect-scopes
 */
const loginRequest = {
  scopes: ["openid", "profile"],
};

/**
 * An optional silentRequest object can be used to achieve silent SSO
 * between applications by providing a "login_hint" property.
 */

// const silentRequest = {
//   scopes: ["openid", "profile"],
//   loginHint: "example@domain.net"
// };

// exporting config object for jest
if (typeof exports !== 'undefined') {
  module.exports = {
      msalConfig: msalConfig,
      loginRequest: loginRequest,
  };
}