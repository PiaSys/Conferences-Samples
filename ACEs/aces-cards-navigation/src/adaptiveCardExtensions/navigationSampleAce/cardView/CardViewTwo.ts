import {
  BaseBasicCardView,
  IBasicCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'NavigationSampleAceAdaptiveCardExtensionStrings';
import { 
  INavigationSampleAceAdaptiveCardExtensionProps, 
  INavigationSampleAceAdaptiveCardExtensionState
} from '../NavigationSampleAceAdaptiveCardExtension';

export class CardViewTwo extends BaseBasicCardView<INavigationSampleAceAdaptiveCardExtensionProps, INavigationSampleAceAdaptiveCardExtensionState> {

  public get data(): IBasicCardParameters {
    return {
      primaryText: strings.CardViewTwoPrimaryText
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
