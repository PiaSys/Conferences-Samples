import {
  BaseBasicCardView,
  IBasicCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'NavigationSampleAceAdaptiveCardExtensionStrings';
import { 
  INavigationSampleAceAdaptiveCardExtensionProps, 
  INavigationSampleAceAdaptiveCardExtensionState, 
  QUICK_VIEW_ONE_REGISTRY_ID
} from '../NavigationSampleAceAdaptiveCardExtension';

export class CardViewOne extends BaseBasicCardView<INavigationSampleAceAdaptiveCardExtensionProps, INavigationSampleAceAdaptiveCardExtensionState> {
  public get cardButtons(): [ICardButton] | [ICardButton, ICardButton] | undefined {
    return [
      {
        title: strings.ShowQuickViewOneButton,
        action: {
          type: 'QuickView',
          parameters: {
            view: QUICK_VIEW_ONE_REGISTRY_ID
          }
        }
      }
    ];
  }

  public get data(): IBasicCardParameters {
    return {
      primaryText: strings.CardViewOnePrimaryText
    };
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'ExternalLink',
      parameters: {
        target: 'https://www.bing.com'
      }
    };
  }
}
