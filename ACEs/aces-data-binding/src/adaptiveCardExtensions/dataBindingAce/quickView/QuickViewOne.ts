import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'DataBindingAceAdaptiveCardExtensionStrings';
import { IDataBindingAceAdaptiveCardExtensionProps, IDataBindingAceAdaptiveCardExtensionState } from '../DataBindingAceAdaptiveCardExtension';

export interface IQuickViewOneData {
  subTitle: string;
  title: string;
  ordersCount: number;
  ordersTotalAmount: number;
}

export class QuickViewOne extends BaseAdaptiveCardView<
  IDataBindingAceAdaptiveCardExtensionProps,
  IDataBindingAceAdaptiveCardExtensionState,
  IQuickViewOneData
> {
  public get data(): IQuickViewOneData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      ordersCount: this.state.orders.length,
      ordersTotalAmount: this.state.orders.reduce((t, o) => t + o.totalAmount, 0)
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewOneTemplate.json');
  }
}