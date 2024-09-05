import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { ChartCardPropertyPane } from './ChartCardPropertyPane';
import { QuickView } from './quickView/QuickView';

export interface IChartCardAdaptiveCardExtensionProps {
  title: string;
}

export interface IChartCardAdaptiveCardExtensionState {
}

const CARD_VIEW_REGISTRY_ID: string = 'ChartCard_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ChartCard_QUICK_VIEW';


export default class ChartCardAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IChartCardAdaptiveCardExtensionProps,
  IChartCardAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ChartCardPropertyPane;

  public onInit(): Promise<void> {
    this.state = { };

    // registers the card view to be shown in a dashboard
    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    // registers the quick view to open via QuickView action
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    return Promise.resolve();
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'ChartCard-property-pane'*/
      './ChartCardPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ChartCardPropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane?.getPropertyPaneConfiguration();
  }
}
