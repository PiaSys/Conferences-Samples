import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PlayWithNavigationAdaptiveCardExtensionStrings';
import { 
  IPlayWithNavigationAdaptiveCardExtensionProps, 
  IPlayWithNavigationAdaptiveCardExtensionState,
  END_CARD_VIEW_REGISTRY_ID,
  START_QUICK_VIEW_REGISTRY_ID
} from '../PlayWithNavigationAdaptiveCardExtension';

export interface IReplacedQuickViewData {
  subTitle: string;
  title: string;
}

export class ReplacedQuickView extends BaseAdaptiveCardView<
  IPlayWithNavigationAdaptiveCardExtensionProps,
  IPlayWithNavigationAdaptiveCardExtensionState,
  IReplacedQuickViewData
> {
  public get data(): IReplacedQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/ReplacedQuickViewTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "finish") {
      this.quickViewNavigator.close();
      this.cardNavigator.push(END_CARD_VIEW_REGISTRY_ID);
    } else if (action.id == "goBack") {
      this.quickViewNavigator.replace(START_QUICK_VIEW_REGISTRY_ID);
    }
  }
}