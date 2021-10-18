import {
  BasePrimaryTextCardView,
  IPrimaryTextCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ConsumeSpoAceAdaptiveCardExtensionStrings';
import { IConsumeSpoAceAdaptiveCardExtensionProps, IConsumeSpoAceAdaptiveCardExtensionState, QUICK_VIEW_REGISTRY_ID } from '../ConsumeSpoAceAdaptiveCardExtension';

export class CardView extends BasePrimaryTextCardView<IConsumeSpoAceAdaptiveCardExtensionProps, IConsumeSpoAceAdaptiveCardExtensionState> {
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

  public get data(): IPrimaryTextCardParameters {
    return {
      primaryText: strings.PrimaryText,
      description: `${this.state.newIssues.length} new Issues`
    };
  }
}
