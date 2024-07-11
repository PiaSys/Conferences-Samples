import React, { useEffect, useState } from 'react';
import { useMsal } from '@azure/msal-react';
import { Client } from '@microsoft/microsoft-graph-client';
import { AuthCodeMSALBrowserAuthenticationProvider, AuthCodeMSALBrowserAuthenticationProviderOptions } from '@microsoft/microsoft-graph-client/authProviders/authCodeMsalBrowser';
import { PublicClientApplication, InteractionType } from '@azure/msal-browser';

const getUser = async (instance: PublicClientApplication) => {
  try {
    const options: AuthCodeMSALBrowserAuthenticationProviderOptions = {
      account: instance.getAllAccounts()[0], // the AccountInfo instance to acquire the token for.
      interactionType: InteractionType.Popup, // msal-browser InteractionType
      scopes: ["user.read"] // example of the scopes to be passed
    };

    const authProvider = new AuthCodeMSALBrowserAuthenticationProvider(instance, options);
    const graphClient = Client.initWithMiddleware({ authProvider });

    const user = await graphClient.api('/me').get();
    return user;
  } catch (error) {
    console.error(error);
    throw error;
  }
};

const UserComponent: React.FC = () => {
  const [displayName, setDisplayName] = useState<string | null>(null);
  const { instance } = useMsal();

  const getDisplayNameViaGraph = async () => {
    try {
      const user = await getUser((instance as PublicClientApplication));
      setDisplayName(user.displayName);
    } catch (error) {
      console.error("Error fetching user: ", error);
    }
  }

  return (
    <div>
        <button onClick={getDisplayNameViaGraph}>Invoke REST API</button>
        {displayName && <p>Your display name is: {displayName}</p>}
    </div>
  );
};

export default UserComponent;
