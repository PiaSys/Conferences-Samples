import express from 'express';
import { validateAccessToken } from './authMiddleware';
import { validateScope } from './scopeMiddleware';
import { ConfidentialClientApplication, OnBehalfOfRequest } from '@azure/msal-node';
import { Client } from '@microsoft/microsoft-graph-client';
import 'isomorphic-fetch';
import { msalConfig } from './authConfig';

const cors = require('cors');
const app = express();
const port = 3001;

const corsOptions = {
    origin: 'http://localhost:3000',
    optionsSuccessStatus: 200,
  };

app.use(cors(corsOptions));
app.use(express.json());

const cca = new ConfidentialClientApplication({ auth: msalConfig.auth });

app.get('/api/protected', validateAccessToken, validateScope(['RestApi.Consumer.ReadWrite']), async (req, res) => {

  try {

    // Get the Access Token from the request
    const authHeader = req.headers.authorization;

    if (!authHeader || !authHeader.startsWith('Bearer ')) {
      return res.status(401).send('Unauthorized');
    }
  
    const accessToken = authHeader.split(' ')[1];

    // Make an on-behalf-of request for Microsoft Graph
    const oboRequest: OnBehalfOfRequest = {
        oboAssertion: accessToken,
        scopes: ["https://graph.microsoft.com/.default"],
    };

    const response = await cca.acquireTokenOnBehalfOf(oboRequest);
    console.log(`OBO Token: ${response?.accessToken}`);

    // Initialize Graph Client
    const graphClient = Client.init({
        authProvider: (done) => {
            done(null, response?.accessToken ?? null);
        },
    });

    // Send an email on behalf of the user
    await graphClient.api('/me/sendMail').post({
        message: {
            subject: "Email from a protected API",
            body: {
                contentType: "Text",
                content: "This is a demo email from a protected API sent on-behalf-of a user.",
            },
            toRecipients: [
                {
                    emailAddress: {
                        address: "TARGET_EMAIL_ADDRESS",
                    },
                },
            ],
        },
    });

    res.status(200).send({ result: `Hello ${(req as any).user.name}, you have access to this protected resource! And the API just sent an e-mail on your behalf!` });
} catch (error) {
    console.error(error);
    res.status(500).send({ result: `Error sending email` });
}

});

app.listen(port, () => {
  console.log(`API is running at http://localhost:${port}`);
});
