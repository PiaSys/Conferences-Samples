import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ClockAceAdaptiveCardExtensionStrings';
import { IClockAceAdaptiveCardExtensionProps, IClockAceAdaptiveCardExtensionState } from '../ClockAceAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
  time: string;
}

export class QuickView extends BaseAdaptiveCardView<
  IClockAceAdaptiveCardExtensionProps,
  IClockAceAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      time: this.state.time
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}