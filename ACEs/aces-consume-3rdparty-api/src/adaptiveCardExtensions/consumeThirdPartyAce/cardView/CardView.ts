import {
  BasePrimaryTextCardView,
  IPrimaryTextCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ConsumeThirdPartyAceAdaptiveCardExtensionStrings';
import { IConsumeThirdPartyAceAdaptiveCardExtensionProps, IConsumeThirdPartyAceAdaptiveCardExtensionState } from '../ConsumeThirdPartyAceAdaptiveCardExtension';

export class CardView extends BasePrimaryTextCardView<IConsumeThirdPartyAceAdaptiveCardExtensionProps, IConsumeThirdPartyAceAdaptiveCardExtensionState> {
  public get data(): IPrimaryTextCardParameters {
    return {
      primaryText: this.state.symbol,
      description: `${this.state.trend == "Up" ? "▲" : "▼"} ${this.state.quote} USD`
    };
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'ExternalLink',
      parameters: {
        target: `https://finance.yahoo.com/quote/${this.state.symbol}`
      }
    };
  }
}
