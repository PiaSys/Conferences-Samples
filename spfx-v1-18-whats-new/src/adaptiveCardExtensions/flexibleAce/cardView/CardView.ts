import {
  BaseComponentsCardView,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ITextCardViewParameters,
  BasicCardView
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'FlexibleAceAdaptiveCardExtensionStrings';
import {
  IFlexibleAceAdaptiveCardExtensionProps,
  IFlexibleAceAdaptiveCardExtensionState,
  QUICK_VIEW_REGISTRY_ID
} from '../FlexibleAceAdaptiveCardExtension';

export class CardView extends BaseComponentsCardView<
  IFlexibleAceAdaptiveCardExtensionProps,
  IFlexibleAceAdaptiveCardExtensionState,
  ITextCardViewParameters
> {
  public get cardViewParameters(): ITextCardViewParameters {
    return BasicCardView({
      cardBar: {
        componentName: 'cardBar',
        title: this.properties.title
      },
      header: {
        componentName: 'text',
        text: strings.PrimaryText
      },
      footer: {
        componentName: 'cardButton',
        title: strings.QuickViewButton,
        action: {
          type: 'QuickView',
          parameters: {
            view: QUICK_VIEW_REGISTRY_ID
          }
        }
      }
    });
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
