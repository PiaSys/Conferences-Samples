import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { ConsumeThirdPartyAcePropertyPane } from './ConsumeThirdPartyAcePropertyPane';
import { AadHttpClient } from '@microsoft/sp-http';

export interface IConsumeThirdPartyAceAdaptiveCardExtensionProps {
  title: string;
  iconProperty: string;
  quoteServiceUrl: string;
  symbols: string;
}

export interface IConsumeThirdPartyAceAdaptiveCardExtensionState {
  symbol: string;
  quote: number;
  trend: string;
}

interface StockQuoteInfo {
  symbol: string;
  quote: number;
  trend: string;
  user: string;
}

const CARD_VIEW_REGISTRY_ID: string = 'ConsumeThirdPartyAce_CARD_VIEW';

export default class ConsumeThirdPartyAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IConsumeThirdPartyAceAdaptiveCardExtensionProps,
  IConsumeThirdPartyAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ConsumeThirdPartyAcePropertyPane | undefined;

  private aadClient: AadHttpClient;

  public async onInit(): Promise<void> {
    this.state = {
      symbol: '',
      quote: 0,
      trend: ''
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());

    this.aadClient = await this.context.aadHttpClientFactory.getClient("api://stockquote.piasys.com");

    setTimeout(this.loadQuote, 500);

    return Promise.resolve();
  }

  private loadQuote = async () => {

    // Skip in case there are no symbols
    if (this.properties.symbols === undefined || this.properties.symbols.length == 0)
    {
      console.log("No stock symbols to load ...");
    }
    else
    {
      // Load the requested symbols
      const symbols: string[] = this.properties.symbols.split(",");

      // Configure the initial/default symbol
      let symbol = symbols[0];

      // Determine what the next symbol is
      if (this.state.symbol !== '') {
        const currentSymbolIndex: number = symbols.indexOf(this.state.symbol);
        symbol = symbols[currentSymbolIndex < (symbols.length - 1) ? currentSymbolIndex + 1 : 0];
      }

      // Get the actual quote of the current symbol
      const httpResponse = await this.aadClient.get(`${this.properties.quoteServiceUrl}&symbol=${symbol}`,
      AadHttpClient.configurations.v1);
      const stockInfo: StockQuoteInfo = await httpResponse.json();

      this.setState({
        symbol: stockInfo.symbol,
        quote: stockInfo.quote,
        trend: stockInfo.trend
      });

      console.log(`Stock quote request for ${stockInfo.user}`);
    }

    // Load the next quote every 5 seconds
    setTimeout(this.loadQuote, 5000);
  }

  public get title(): string {
    return this.properties.title;
  }

  protected get iconProperty(): string {
    return this.properties.iconProperty || require('./assets/SharePointLogo.svg');
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'ConsumeThirdPartyAce-property-pane'*/
      './ConsumeThirdPartyAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ConsumeThirdPartyAcePropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane!.getPropertyPaneConfiguration();
  }
}
