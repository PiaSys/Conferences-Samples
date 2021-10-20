import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'NavigationSampleAceAdaptiveCardExtensionStrings';
import { 
  INavigationSampleAceAdaptiveCardExtensionProps, 
  INavigationSampleAceAdaptiveCardExtensionState,
  QUICK_VIEW_TWO_REGISTRY_ID,
  CARD_VIEW_TWO_REGISTRY_ID
} from '../NavigationSampleAceAdaptiveCardExtension';

export interface IQuickViewThreeData {
  subTitle: string;
  title: string;
  description: string;
}

export class QuickViewThree extends BaseAdaptiveCardView<
  INavigationSampleAceAdaptiveCardExtensionProps,
  INavigationSampleAceAdaptiveCardExtensionState,
  IQuickViewThreeData
> {
  public get data(): IQuickViewThreeData {
    return {
      subTitle: strings.SubTitle,
      title: strings.TitleQuickViewThree,
      description: this.properties.description
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewThreeTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "GotoTwo") {

      this.setState({
        fromCard: action.data.fromCard
      });

      this.quickViewNavigator.push(QUICK_VIEW_TWO_REGISTRY_ID);
    }
    else if (action.id == "Finish") {

      this.setState({
        fromCard: action.data.fromCard
      });

      this.cardNavigator.push(CARD_VIEW_TWO_REGISTRY_ID);
      this.quickViewNavigator.close();
    }
  }
}