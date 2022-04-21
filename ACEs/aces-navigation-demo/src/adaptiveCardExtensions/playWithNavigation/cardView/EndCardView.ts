import {
  BaseImageCardView,
  IImageCardParameters,
  IActionArguments,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PlayWithNavigationAdaptiveCardExtensionStrings';
import { 
  IPlayWithNavigationAdaptiveCardExtensionProps, 
  IPlayWithNavigationAdaptiveCardExtensionState,
  START_CARD_VIEW_REGISTRY_ID
} from '../PlayWithNavigationAdaptiveCardExtension';

export class EndCardView extends BaseImageCardView<IPlayWithNavigationAdaptiveCardExtensionProps, IPlayWithNavigationAdaptiveCardExtensionState> {
  /**
   * Buttons will not be visible if card size is 'Medium' with Image Card View.
   * It will support up to two buttons for 'Large' card size.
   */
  public get cardButtons(): [ICardButton] | [ICardButton, ICardButton] | undefined {
    return [
      {
        title: strings.RestartQuickViewButton,
        id: 'restart',
        action: {
          type: 'Submit',
          parameters: {            
            "Parameter1": "Value1",
            "Parameter2": "Value2"
          },
          confirmationDialog: {
              title: "Are you sure?",
              message: "Do you really want to restart from scratch?!"
          }
        }
      }
    ];
  }

  public get data(): IImageCardParameters {
    return {
      primaryText: strings.DonePrimaryText,
      imageUrl: require('../assets/nature-2.png'),
      title: this.properties.title
    };
  }

  public onAction(action: IActionArguments | any): void {

    console.log(action);

    if (action.id == "restart") {
      this.cardNavigator.replace(START_CARD_VIEW_REGISTRY_ID);
      // this.cardNavigator.pop();
    }
  }
}
