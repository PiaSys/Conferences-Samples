import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'SubmitDataAceAdaptiveCardExtensionStrings';
import { ISubmitDataAceAdaptiveCardExtensionProps, ISubmitDataAceAdaptiveCardExtensionState } from '../SubmitDataAceAdaptiveCardExtension';

export interface IConfirmMenuQuickViewData {
  title: string;
  subTitle: string;
  mainCourse: string;
  dessert: string;
  beverages: string;
}

export class ConfirmMenuQuickView extends BaseAdaptiveCardView<
  ISubmitDataAceAdaptiveCardExtensionProps,
  ISubmitDataAceAdaptiveCardExtensionState,
  IConfirmMenuQuickViewData
> {
  public get data(): IConfirmMenuQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      mainCourse: this.state.mainCourse,
      dessert: this.state.dessert,
      beverages: this.state.beverages
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/ConfirmMenuQuickViewTemplate.json');
  }
}