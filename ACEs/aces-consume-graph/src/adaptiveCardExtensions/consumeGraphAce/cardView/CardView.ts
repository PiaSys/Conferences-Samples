import {
  BaseBasicCardView,
  IBasicCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ConsumeGraphAceAdaptiveCardExtensionStrings';
import { IConsumeGraphAceAdaptiveCardExtensionProps, IConsumeGraphAceAdaptiveCardExtensionState, QUICK_VIEW_REGISTRY_ID } from '../ConsumeGraphAceAdaptiveCardExtension';

export class CardView extends BaseBasicCardView<IConsumeGraphAceAdaptiveCardExtensionProps, IConsumeGraphAceAdaptiveCardExtensionState> {
  public get cardButtons(): [ICardButton] | [ICardButton, ICardButton] | undefined {
    return [
      {
        title: strings.QuickViewButton,
        action: {
          type: 'QuickView',
          parameters: {
            view: QUICK_VIEW_REGISTRY_ID
          }
        }
      }
    ];
  }

  public get data(): IBasicCardParameters {
    return {
      primaryText: strings.PrimaryText
    };
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'ExternalLink',
      parameters: {
        target: 'https://mail.office365.com'
      }
    };
  }
}
