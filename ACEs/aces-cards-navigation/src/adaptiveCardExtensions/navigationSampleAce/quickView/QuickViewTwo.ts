import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'NavigationSampleAceAdaptiveCardExtensionStrings';
import { 
  INavigationSampleAceAdaptiveCardExtensionProps, 
  INavigationSampleAceAdaptiveCardExtensionState,
  QUICK_VIEW_ONE_REGISTRY_ID,
  QUICK_VIEW_THREE_REGISTRY_ID
} from '../NavigationSampleAceAdaptiveCardExtension';

export interface IQuickViewTwoData {
  subTitle: string;
  title: string;
  description: string;
}

export class QuickViewTwo extends BaseAdaptiveCardView<
  INavigationSampleAceAdaptiveCardExtensionProps,
  INavigationSampleAceAdaptiveCardExtensionState,
  IQuickViewTwoData
> {
  public get data(): IQuickViewTwoData {
    return {
      subTitle: strings.SubTitle,
      title: strings.TitleQuickViewTwo,
      description: this.properties.description
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTwoTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "GotoOne") {

      this.setState({
        fromCard: action.data.fromCard
      });

      this.quickViewNavigator.push(QUICK_VIEW_ONE_REGISTRY_ID);
    }
    else if (action.id == "GotoThree") {

      this.setState({
        fromCard: action.data.fromCard
      });

      this.quickViewNavigator.push(QUICK_VIEW_THREE_REGISTRY_ID);
    }
  }

}