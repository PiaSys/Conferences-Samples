"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var dotenv = require("dotenv");
var fs_1 = require("fs");
var nodejs_1 = require("@pnp/nodejs");
var sp_1 = require("@pnp/sp");
require("@pnp/sp/webs/index.js");
// Initialize the environment variables
dotenv.config();
var certificatePrivateKey = (0, fs_1.readFileSync)(process.env.CERTIFICATE_PATH, 'utf8');
var config = {
    auth: {
        authority: "https://login.microsoftonline.com/".concat(process.env.TENANT_ID, "/"),
        clientId: process.env.CLIENT_ID,
        clientCertificate: {
            thumbprint: process.env.CERTIFICATE_THUMBPRINT,
            privateKey: certificatePrivateKey.toString()
        },
    },
};
// Initialized PnPjs with MSAL Authentication (App Only)
var sp = (0, sp_1.spfi)().using((0, nodejs_1.SPDefault)({
    baseUrl: process.env.TARGET_SITE_URL,
    msal: {
        config: config,
        scopes: ["https://".concat(process.env.TENANT_NAME, "/.default")]
    }
}));
// make a call to SharePoint and log it in the console
var web = sp.web.select("Title", "Description")().then(function (w) {
    console.log(JSON.stringify(w, null, 4));
}).catch(function (e) { return console.error(e); });
