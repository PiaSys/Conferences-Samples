import { app, HttpRequest, HttpResponseInit, InvocationContext } from "@azure/functions";
import stockData from "../stockData.json";

import openapiSpec from "../openapi.json";
import { promises as fs } from 'fs';
import * as path from 'path';

/**
 * This function handles the HTTP request and returns the list of stock items.
 *
 * @param {HttpRequest} req - The HTTP request.
 * @param {InvocationContext} context - The Azure Functions context object.
 * @returns {Promise<Response>} - A promise that resolves with the HTTP response containing the repair information.
 */
export async function getStockList(request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> {
    context.log(`Http function getStockList received request`);

    // Initialize response.
    const response: HttpResponseInit = {
        status: 200,
        jsonBody: {
            results: stockData,
        },
    };

    return response;
};

/**
 * This function handles the HTTP request and returns a specific stock item by symbol.
 *
 * @param {HttpRequest} req - The HTTP request.
 * @param {InvocationContext} context - The Azure Functions context object.
 * @returns {Promise<Response>} - A promise that resolves with the HTTP response containing the repair information.
 */
export async function getStock(request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> {
    context.log(`Http function getStock received request for url "${request.url}"`);

    // Get the symbol from the query string
    const symbol = request.query.get("symbol");

    // Find the stock item by symbol
    const stockItem = stockData.find((item) => item.symbol === symbol);

    // Initialize response.
    const response: HttpResponseInit = {
        status: 200,
        jsonBody: {
            stock: stockItem,
        },
    };

    return response;
};

// Define the supported values for the action field in the trade request
enum Action {
    Sell = "sell",
    Buy = "buy"
}

// Define an interface for a trade request
interface TradeRequest {
    symbol: string;
    action: Action;
    quantity: number;
    price: number;
}

/**
 * This function handles the HTTP request for a trade on a specific stock item by symbol, action (sell/buy), quantity, and price.
 *
 * @param {HttpRequest} req - The HTTP request.
 * @param {InvocationContext} context - The Azure Functions context object.
 * @returns {Promise<Response>} - A promise that resolves with the HTTP response containing the repair information.
 */
export async function tradeStock(request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> {
    context.log(`Http function tradeStock received request`);

    try {
        // Parse the JSON body from the request
        const jsonBody = (await request.json());
        const tradeRequest = jsonBody as TradeRequest;

        // Validate the input
        if (!tradeRequest || !tradeRequest.symbol || !tradeRequest.action || !tradeRequest.quantity || !tradeRequest.price) {
            return {
                status: 400,
                jsonBody: {
                    error: "Invalid input. Please provide symbol, action, quantity, and price."
                }
            };
        }

        // Find the stock item by symbol
        const stockItem = stockData.find((item) => item.symbol === tradeRequest.symbol);

        if (!stockItem) {
            return {
                status: 404,
                jsonBody: {
                    error: "Stock item not found."
                }
            };
        }

        // Process the trade (this is a placeholder, actual logic will depend on your requirements)
        const tradeResult = {
            symbol: tradeRequest.symbol,
            action: tradeRequest.action,
            quantity: tradeRequest.quantity,
            price: tradeRequest.price,
            status: "Trade processed successfully"
        };

        // Initialize response
        const response: HttpResponseInit = {
            status: 200,
            jsonBody: tradeResult
        };

        return response;
    } catch (error) {

        // Initialize failure response
        const failureResponse: HttpResponseInit = {
            status: 500,
            jsonBody: error
        };

        return failureResponse;
    }

};

app.http('getStockList', {
    methods: ['GET'],
    authLevel: 'anonymous',
    handler: getStockList
});

app.http('getStock', {
    methods: ['GET'],
    authLevel: 'anonymous',
    handler: getStock
});

app.http('tradeStock', {
    methods: ['POST'],
    authLevel: 'anonymous',
    handler: tradeStock
});

app.http('openapi', {
    methods: ['GET'],
    authLevel: 'anonymous',
    handler: async (request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> => {
        return {
            status: 200,
            jsonBody: openapiSpec
        };
    }
});

app.http('openapi-yaml', {
    methods: ['GET'],
    authLevel: 'anonymous',
    handler: async (request: HttpRequest, context: InvocationContext): Promise<HttpResponseInit> => {
        try {
            const filePath = path.join(__dirname, '../openapi.yml');
            const fileContent = await fs.readFile(filePath, 'utf8');
    
            return {
                status: 200,
                headers: {
                    'Content-Type': 'application/x-yaml'
                },
                body: fileContent
            };
    
        } catch (error) {

            // Initialize failure response
            const failureResponse: HttpResponseInit = {
                status: 500,
                jsonBody: error
            };

            return failureResponse;

        }
    }
});