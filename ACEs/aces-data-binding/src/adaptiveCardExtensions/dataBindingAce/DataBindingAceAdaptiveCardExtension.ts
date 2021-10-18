import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickViewOne } from './quickView/QuickViewOne';
import { QuickViewTwo } from './quickView/QuickViewTwo';
import { DataBindingAcePropertyPane } from './DataBindingAcePropertyPane';

export interface IDataBindingAceAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface IDataBindingAceAdaptiveCardExtensionState {
  description: string;
  orders: Order[];
}

export interface Order {
  id: string;
  date: Date;
  status: OrderStatus;
  customer: string;
  totalAmount: number;
}

export enum OrderStatus {
  Inserted,
  Processed,
  Delivered,
  Completed,
}

const CARD_VIEW_REGISTRY_ID: string = 'DataBindingAce_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID1: string = 'DataBindingAce_QUICK_VIEW1';
export const QUICK_VIEW_REGISTRY_ID2: string = 'DataBindingAce_QUICK_VIEW2';

export default class DataBindingAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IDataBindingAceAdaptiveCardExtensionProps,
  IDataBindingAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: DataBindingAcePropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      description: this.properties.description,
      orders: [
        { id: "ORD01", date: new Date(2021, 9, 15), status: OrderStatus.Completed, customer: "PiaSys.com", totalAmount: 14000 },
        { id: "ORD02", date: new Date(2021, 9, 26), status: OrderStatus.Completed, customer: "Acme", totalAmount: 21000 },
        { id: "ORD03", date: new Date(2021, 9, 27), status: OrderStatus.Completed, customer: "Contoso", totalAmount: 12000 },
        { id: "ORD04", date: new Date(2021, 9, 28), status: OrderStatus.Delivered, customer: "PiaSys.com", totalAmount: 7000 },
        { id: "ORD05", date: new Date(2021, 10, 3), status: OrderStatus.Delivered, customer: "Litware", totalAmount: 2600 },
        { id: "ORD06", date: new Date(2021, 10, 3), status: OrderStatus.Delivered, customer: "Contoso", totalAmount: 4000 },
        { id: "ORD07", date: new Date(2021, 10, 5), status: OrderStatus.Delivered, customer: "Litware", totalAmount: 3000 },
        { id: "ORD08", date: new Date(2021, 10, 5), status: OrderStatus.Processed, customer: "PiaSys.com", totalAmount: 2900 },
        { id: "ORD09", date: new Date(2021, 10, 6), status: OrderStatus.Processed, customer: "Acme", totalAmount: 5300 },
        { id: "ORD10", date: new Date(2021, 10, 7), status: OrderStatus.Processed, customer: "PiaSys.com", totalAmount: 6000 },
        { id: "ORD11", date: new Date(2021, 10, 7), status: OrderStatus.Processed, customer: "Litware", totalAmount: 12000 },
        { id: "ORD12", date: new Date(2021, 10, 9), status: OrderStatus.Processed, customer: "PiaSys.com", totalAmount: 21500 },
        { id: "ORD13", date: new Date(2021, 10, 10), status: OrderStatus.Processed, customer: "Contoso", totalAmount: 20000 },
        { id: "ORD14", date: new Date(2021, 10, 12), status: OrderStatus.Processed, customer: "Litware", totalAmount: 11000 },
        { id: "ORD15", date: new Date(2021, 10, 12), status: OrderStatus.Processed, customer: "Acme", totalAmount: 9000 },
        { id: "ORD16", date: new Date(2021, 10, 13), status: OrderStatus.Processed, customer: "PiaSys.com", totalAmount: 21000 },
        { id: "ORD17", date: new Date(2021, 10, 13), status: OrderStatus.Inserted, customer: "Litware", totalAmount: 19000 },
        { id: "ORD18", date: new Date(2021, 10, 16), status: OrderStatus.Inserted, customer: "Contoso", totalAmount: 12500 },
        { id: "ORD19", date: new Date(2021, 10, 16), status: OrderStatus.Inserted, customer: "PiaSys.com", totalAmount: 13800 },
        { id: "ORD20", date: new Date(2021, 10, 18), status: OrderStatus.Inserted, customer: "Litware", totalAmount: 11200 },
      ]
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID1, () => new QuickViewOne());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID2, () => new QuickViewTwo());

    return Promise.resolve();
  }

  public get title(): string {
    return this.properties.title;
  }

  protected get iconProperty(): string {
    return this.properties.iconProperty || require('./assets/SharePointLogo.svg');
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'DataBindingAce-property-pane'*/
      './DataBindingAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.DataBindingAcePropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane!.getPropertyPaneConfiguration();
  }
}
