import {
  BaseImageCardView,
  IImageCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PlayWithNavigationAdaptiveCardExtensionStrings';
import { 
  IPlayWithNavigationAdaptiveCardExtensionProps, 
  IPlayWithNavigationAdaptiveCardExtensionState,
  START_QUICK_VIEW_REGISTRY_ID
} from '../PlayWithNavigationAdaptiveCardExtension';

export class StartCardView extends BaseImageCardView<IPlayWithNavigationAdaptiveCardExtensionProps, IPlayWithNavigationAdaptiveCardExtensionState> {
  /**
   * Buttons will not be visible if card size is 'Medium' with Image Card View.
   * It will support up to two buttons for 'Large' card size.
   */
  public get cardButtons(): [ICardButton] | [ICardButton, ICardButton] | undefined {
    return [
      {
        title: strings.StartQuickViewButton,
        action: {
          type: 'QuickView',
          parameters: {
            view: START_QUICK_VIEW_REGISTRY_ID
          }
        }
      }
    ];
  }

  public get data(): IImageCardParameters {
    return {
      primaryText: strings.StartPrimaryText,
      imageUrl: require('../assets/nature-1.png'),
      title: this.properties.title
    };
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'QuickView',
      parameters: {
        view: START_QUICK_VIEW_REGISTRY_ID
      }
    };
  }
}
