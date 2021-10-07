import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PrimaryTextCardSampleAdaptiveCardExtensionStrings';
import { IPrimaryTextCardSampleAdaptiveCardExtensionProps, IPrimaryTextCardSampleAdaptiveCardExtensionState } from '../PrimaryTextCardSampleAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
  description: string;
}

export class QuickView extends BaseAdaptiveCardView<
  IPrimaryTextCardSampleAdaptiveCardExtensionProps,
  IPrimaryTextCardSampleAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      description: this.properties.description
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}