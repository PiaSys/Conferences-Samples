import { config } from "dotenv";
import 'isomorphic-fetch';
import { DeviceCodeCredential, DeviceCodeInfo } from '@azure/identity';
import { TokenCredentialAuthenticationProvider } from
  '@microsoft/microsoft-graph-client/authProviders/azureTokenCredentials';
import { Client } from "@microsoft/microsoft-graph-client";
import { User } from '@microsoft/microsoft-graph-types';

// Global variables
let _graphClient: Client | undefined = undefined;

// Load environment variables from .env file
config();

// Get settings from environment variables
const tenantId = process.env.TENANT_ID;
const clientId = process.env.CLIENT_ID;

// Ensure all required environment variables are set
if (!tenantId || !clientId ) {
    throw new Error("Missing required environment variables.");
}

async function main() {
  
    // Define the scopes for the Microsoft Graph requests
    const scopes: string[] = ['user.read', 'mail.read', 'user.read.all']; 

    // Initialize Graph
    initializeGraph(tenantId, clientId, scopes);

    // Greet the user by name
    await readUserDisplayName();
}

function initializeGraph(tenantId: string | undefined, clientId: string | undefined, scopes: string[]) {
    if (!tenantId || !clientId ) {
        throw new Error("Cannot initialized the Microsoft Graph SDK client.");
    }

    const _deviceCodeCredential = new DeviceCodeCredential({
        clientId: clientId,
        tenantId: tenantId,
        userPromptCallback: (deviceCodeInfo: DeviceCodeInfo) => {
            // Display the device code message to
            // the user. This tells them
            // where to go to sign in and provides the
            // code to use.
            console.log("Please use a web browser to authenticate:");
            console.log(`Visit ${deviceCodeInfo.verificationUri}`);
            console.log(`Enter the following code: ${deviceCodeInfo.userCode}`);
            }
        });

    const authProvider = new TokenCredentialAuthenticationProvider(_deviceCodeCredential, {
        scopes
    });

    // Initialize the Graph client
    _graphClient = Client.initWithMiddleware({
        authProvider
    });
}

async function readUserDisplayName() {
    if (!_graphClient) {
        throw new Error("Cannot read user display name. Microsoft Graph client is not initialized.");
    }

    const user: User = await _graphClient.api('/me').get();
    console.log(`Hello, ${user.displayName}!`);
}

main();