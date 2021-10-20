import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'NavigationSampleAceAdaptiveCardExtensionStrings';
import { 
  INavigationSampleAceAdaptiveCardExtensionProps, 
  INavigationSampleAceAdaptiveCardExtensionState,
  QUICK_VIEW_TWO_REGISTRY_ID
 } from '../NavigationSampleAceAdaptiveCardExtension';

export interface IQuickViewOneData {
  subTitle: string;
  title: string;
  description: string;
}

export class QuickViewOne extends BaseAdaptiveCardView<
  INavigationSampleAceAdaptiveCardExtensionProps,
  INavigationSampleAceAdaptiveCardExtensionState,
  IQuickViewOneData
> {
  public get data(): IQuickViewOneData {
    return {
      subTitle: strings.SubTitle,
      title: strings.TitleQuickViewOne,
      description: this.properties.description
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewOneTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "GotoTwo") {

      this.setState({
        fromCard: action.data.fromCard
      });

      this.quickViewNavigator.push(QUICK_VIEW_TWO_REGISTRY_ID);
    }
  }
}