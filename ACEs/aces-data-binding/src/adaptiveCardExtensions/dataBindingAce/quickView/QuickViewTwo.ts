import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'DataBindingAceAdaptiveCardExtensionStrings';
import { IDataBindingAceAdaptiveCardExtensionProps, IDataBindingAceAdaptiveCardExtensionState, Order, OrderStatus } from '../DataBindingAceAdaptiveCardExtension';

export interface IQuickViewTwoData {
  subTitle: string;
  title: string;
  orders: Order[];
}

export class QuickViewTwo extends BaseAdaptiveCardView<
  IDataBindingAceAdaptiveCardExtensionProps,
  IDataBindingAceAdaptiveCardExtensionState,
  IQuickViewTwoData
> {
  public get data(): IQuickViewTwoData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      orders: this.state.orders
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTwoTemplate.json');
  }
}