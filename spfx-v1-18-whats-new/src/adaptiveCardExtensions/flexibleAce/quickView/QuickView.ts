import { ISPFxAdaptiveCard, BaseAdaptiveCardQuickView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'FlexibleAceAdaptiveCardExtensionStrings';
import {
  IFlexibleAceAdaptiveCardExtensionProps,
  IFlexibleAceAdaptiveCardExtensionState
} from '../FlexibleAceAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
}

export class QuickView extends BaseAdaptiveCardQuickView<
  IFlexibleAceAdaptiveCardExtensionProps,
  IFlexibleAceAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}
