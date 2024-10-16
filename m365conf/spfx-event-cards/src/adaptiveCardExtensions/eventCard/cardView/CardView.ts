import {
  BaseImageCardView,
  IImageCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'EventCardAdaptiveCardExtensionStrings';
import { QUICK_VIEW_LIST_EVENTS_ID } from '../EventCardAdaptiveCardExtension';
import { IEventCardAdaptiveCardExtensionProps } from '../IEventCardAdaptiveCardExtensionProps';
import { IEventCardAdaptiveCardExtensionState } from '../IEventCardAdaptiveCardExtensionState';

export class CardView extends BaseImageCardView<IEventCardAdaptiveCardExtensionProps, IEventCardAdaptiveCardExtensionState> {
  /**
   * Buttons will not be visible if card size is 'Medium' with Image Card View.
   * It will support up to two buttons for 'Large' card size.
   */
  public get cardButtons(): [ICardButton] | [ICardButton, ICardButton] | undefined {
    if (this.state.events?.length > 0) {
      return [
        {
          title: strings.CardView.QuickViewButton,
          action: {
            type: 'QuickView',
            parameters: {
              view: QUICK_VIEW_LIST_EVENTS_ID
            }
          }
        }
      ];
    } else {
      return undefined;
    }
  }

  public get data(): IImageCardParameters {
    return {
      primaryText: this.state.events?.length > 0 ? `There are ${this.state.events.length} sessions in the calendar` : 'No sessions to manage!',
      imageUrl: require('../assets/summer.png'),
      title: this.properties.title
    };
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    if (this.state.events?.length > 0) {
      return {
        type: 'QuickView',
        parameters: {
          view: QUICK_VIEW_LIST_EVENTS_ID
        }
      };
    } else {
      return undefined;
    }
  }
}
