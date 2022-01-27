import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ReadUserDataAdaptiveCardExtensionStrings';
import { IReadUserDataAdaptiveCardExtensionProps, IReadUserDataAdaptiveCardExtensionState } from '../ReadUserDataAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
  description: string;
  userJson: string;
}

export class QuickView extends BaseAdaptiveCardView<
  IReadUserDataAdaptiveCardExtensionProps,
  IReadUserDataAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      description: this.properties.description,
      userJson: this.state.userJson
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}