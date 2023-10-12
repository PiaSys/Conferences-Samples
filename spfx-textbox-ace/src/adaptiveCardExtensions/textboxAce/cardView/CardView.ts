import {
  BaseComponentsCardView,
  ComponentsCardViewParameters,
  BasicCardView,
  IActionArguments
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'TextboxAceAdaptiveCardExtensionStrings';
import {
  ITextboxAceAdaptiveCardExtensionProps,
  ITextboxAceAdaptiveCardExtensionState,
} from '../TextboxAceAdaptiveCardExtension';

export class CardView extends BaseComponentsCardView<
  ITextboxAceAdaptiveCardExtensionProps,
  ITextboxAceAdaptiveCardExtensionState,
  ComponentsCardViewParameters
> {
  public get cardViewParameters(): ComponentsCardViewParameters {
    return BasicCardView({
      cardBar: {
        componentName: 'cardBar',
        title: this.properties.title
      },
      header: {
        componentName: 'text',
        text: strings.TextboxPromptLabel
      },
      footer: {
        componentName: 'textInput',
        id: 'symbol',
        placeholder: strings.TextboxPlaceholder,
        button: {
          icon: {
            url: 'Send'
          },
          action: {
            type: 'Submit',
            parameters: {
              id: 'showTrend'
            }
          }
        }
      }
    });
  }

  public onAction(action: IActionArguments): void {
    if (action.type === 'Submit' && action.data?.id === 'showTrend') {
      window.open(`https://finance.yahoo.com/quote/${action.data.symbol}`);
    }
  }
}
