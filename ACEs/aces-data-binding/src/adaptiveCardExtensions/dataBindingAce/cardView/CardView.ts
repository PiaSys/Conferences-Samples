import {
  BasePrimaryTextCardView,
  IPrimaryTextCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'DataBindingAceAdaptiveCardExtensionStrings';
import { IDataBindingAceAdaptiveCardExtensionProps, 
  IDataBindingAceAdaptiveCardExtensionState, 
  QUICK_VIEW_REGISTRY_ID1, 
  QUICK_VIEW_REGISTRY_ID2
} from '../DataBindingAceAdaptiveCardExtension';

export class CardView extends BasePrimaryTextCardView<IDataBindingAceAdaptiveCardExtensionProps, IDataBindingAceAdaptiveCardExtensionState> {
  public get data(): IPrimaryTextCardParameters {
    return {
      primaryText: strings.PrimaryText,
      description: this.properties.description
    };
  }

  public get cardButtons(): [ICardButton] | [ICardButton, ICardButton] | undefined {
    return [
      {
        title: strings.QuickView1Button,
        action: {
          type: 'QuickView',
          parameters: {
            view: QUICK_VIEW_REGISTRY_ID1
          }
        }
      },
      {
        title: strings.QuickView2Button,
        action: {
          type: 'QuickView',
          parameters: {
            view: QUICK_VIEW_REGISTRY_ID2
          }
        }
      }
    ];
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'ExternalLink',
      parameters: {
        target: 'https://www.piasys.com'
      }
    };
  }
}
