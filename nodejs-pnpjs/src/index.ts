import * as dotenv from 'dotenv';
import { Configuration } from "@pnp/nodejs/node_modules/@azure/msal-node";
import { readFileSync } from 'fs';
import { SPDefault } from "@pnp/nodejs";
import { spfi } from "@pnp/sp";
import "@pnp/sp/webs/index.js";
import "@pnp/sp/lists/index.js";

// Initialize the environment variables
dotenv.config();

const certificatePrivateKey = readFileSync(process.env.CERTIFICATE_PATH as string);

const config: Configuration = {
    auth: {
        authority: `https://login.microsoftonline.com/${process.env.TENANT_ID}/`,
        clientId: process.env.CLIENT_ID as string,
        clientCertificate: {
            thumbprint: process.env.CERTIFICATE_THUMBPRINT as string,
            privateKey: certificatePrivateKey.toString(),
        },
    },
};

// Initialized PnPjs with MSAL Authentication (App Only)
const sp = spfi().using(SPDefault({
    baseUrl: process.env.TARGET_SITE_URL,
    msal: {
        config: config,
        scopes: [ `https://${process.env.TENANT_NAME}/.default` ]
    }
}));

// make a call to SharePoint and log it in the console
sp.web.select("ID", "Title", "Description")().then(w => {
    console.log(JSON.stringify(w, null, 4));

    sp.web.lists.getByTitle("Documents").items.select("ID", "Title", "FileLeafRef")().then(items => {
        console.log(JSON.stringify(items, null, 4));
    }).catch(e => console.error(e));

}).catch(e => console.error(e));

