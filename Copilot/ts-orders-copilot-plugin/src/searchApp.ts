import { default as axios } from "axios";
import * as querystring from "querystring";
import {
  TeamsActivityHandler,
  CardFactory,
  TurnContext,
  MessagingExtensionQuery,
  MessagingExtensionResponse,
} from "botbuilder";
import * as ACData from "adaptivecards-templating";
import orderCard from "./adaptiveCards/orderCard.json";
import fs from 'fs';
import csvParser from 'csv-parser';

interface CsvRow {
  [key: string]: string;
}

interface CsvSearchQuery {
  searchField: string;
  searchValue: any;
}

const searchCsv = (filePath: string, searchQuery: CsvSearchQuery[]): Promise<CsvRow[]> => {

  return new Promise((resolve, reject) => {
    const results: CsvRow[] = [];

    fs.createReadStream(filePath)
      .pipe(csvParser())
      .on('data', (row: CsvRow) => {
        var match = false;
        for (const query of searchQuery) {
          const { searchField, searchValue } = query;
          if (row[searchField] === searchValue) {
            match = true;
          }
        }
        if (match) {
          results.push(row);
        }
      })
      .on('end', () => {
        console.log('CSV file successfully processed');
        console.log('Search Results:', results);
        resolve(results);
      })
      .on('error', (error) => {
        console.log('Error processing CSV file:', error);
        reject(error);
      });
    });
  };

const ordersFilePath = '../../data/orders.csv';

export class SearchApp extends TeamsActivityHandler {
  constructor() {
    super();
  }

  // Search.
  public async handleTeamsMessagingExtensionQuery(
    context: TurnContext,
    query: MessagingExtensionQuery
  ): Promise<MessagingExtensionResponse> {

    const searchQuery = (query.parameters.length === 1 && query.parameters[0].name === 'orderId') ? [{ searchField: 'orderId', searchValue: query.parameters[0].value }] : query.parameters.map((p) => { return { searchField: p.name, searchValue: p.value };});
    const results = await searchCsv(ordersFilePath, searchQuery);

    const attachments = [];
    results.forEach((r) => {
      const template = new ACData.Template(orderCard);
      const card = template.expand({
        $root: {
          orderId: r.orderId,
          orderDate: r.orderDate,
          customerName: r.customerName,
          customerEmail: r.customerEmail,
          orderStatus: r.orderStatus,
          amount: r.amount
        },
      });
      const preview = CardFactory.heroCard(`Order: ${r.orderId} - Placed on: ${r.orderDate}`);
      const attachment = { ...CardFactory.adaptiveCard(card), preview };
      attachments.push(attachment);
    });

    return {
      composeExtension: {
        type: "result",
        attachmentLayout: "list",
        attachments: attachments,
      },
    };
  }
}
