import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PlayWithNavigationAdaptiveCardExtensionStrings';
import { 
  IPlayWithNavigationAdaptiveCardExtensionProps, 
  IPlayWithNavigationAdaptiveCardExtensionState,
  END_CARD_VIEW_REGISTRY_ID
} from '../PlayWithNavigationAdaptiveCardExtension';

export interface IPushedQuickViewData {
  subTitle: string;
  title: string;
}

export class PushedQuickView extends BaseAdaptiveCardView<
  IPlayWithNavigationAdaptiveCardExtensionProps,
  IPlayWithNavigationAdaptiveCardExtensionState,
  IPushedQuickViewData
> {
  public get data(): IPushedQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/PushedQuickViewTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "finish") {
      this.quickViewNavigator.close();
      this.cardNavigator.push(END_CARD_VIEW_REGISTRY_ID);
    } else if (action.id == "pop") {
      this.quickViewNavigator.pop();
    }
  }
}