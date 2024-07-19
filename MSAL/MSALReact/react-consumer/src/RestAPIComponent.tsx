import React, { useState } from 'react';
import { useMsal } from '@azure/msal-react';
import { PublicClientApplication, SilentRequest } from '@azure/msal-browser';
import { apiTokenRequest } from './authConfig';

const getAccessToken = async (instance: PublicClientApplication) => {
  try {
    const account = instance.getAllAccounts()[0];

    if (!account) {
      throw new Error("No accounts found");
    }
  
    const request: SilentRequest = {
      ...apiTokenRequest,
      account: account,
    };

    const response = await instance.acquireTokenSilent(request);
    return response.accessToken;
  } catch (error) {
    console.error(error);
    throw error;
  }
};

export const invokeRestAPI = async (instance: PublicClientApplication, endpoint: string) => {
  const token = await getAccessToken(instance);
  const headers = new Headers();
  headers.append("Authorization", `Bearer ${token}`);

  const options = {
    method: "GET",
    headers: headers,
  };

  try {
    const response = await fetch(endpoint, options);
    return await response.json();
  } catch (error) {
    console.error("API call failed: ", error);
    throw error;
  }
};

const RestAPIComponent: React.FC = () => {
  const [apiResult, setApiResult] = useState<string | null>(null);
  const { instance } = useMsal();

  const invokeRestApiClick = async () => {
    try {
      const data = await invokeRestAPI((instance as PublicClientApplication), 'http://localhost:3001/api/protected');
      console.log(data);
      setApiResult(data.result);
    } catch (error) {
      setApiResult("Error!");
      console.error("Error fetching data from the API: ", error);
    }
  }

  return (
    <div>
      <button onClick={invokeRestApiClick}>Invoke REST API</button>
      {apiResult && <p>Here is the Secured API result: {apiResult}</p>}
    </div>
  );
};

export default RestAPIComponent;
