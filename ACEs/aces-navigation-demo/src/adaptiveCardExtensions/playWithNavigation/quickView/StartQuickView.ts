import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PlayWithNavigationAdaptiveCardExtensionStrings';
import { 
  IPlayWithNavigationAdaptiveCardExtensionProps, 
  IPlayWithNavigationAdaptiveCardExtensionState,
  REPLACED_QUICK_VIEW_REGISTRY_ID,
  PUSHED_QUICK_VIEW_REGISTRY_ID
} from '../PlayWithNavigationAdaptiveCardExtension';

export interface IStartQuickViewData {
  subTitle: string;
  title: string;
}

export class StartQuickView extends BaseAdaptiveCardView<
  IPlayWithNavigationAdaptiveCardExtensionProps,
  IPlayWithNavigationAdaptiveCardExtensionState,
  IStartQuickViewData
> {
  public get data(): IStartQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/StartQuickViewTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "push") {
      this.quickViewNavigator.push(PUSHED_QUICK_VIEW_REGISTRY_ID);
    } else if (action.id == "replace") {
      this.quickViewNavigator.replace(REPLACED_QUICK_VIEW_REGISTRY_ID);
    }
  }
}