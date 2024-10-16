import type { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { ReactCardPropertyPane } from './ReactCardPropertyPane';

export interface IReactCardAdaptiveCardExtensionProps {
  title: string;
  description: string;
}

export interface IReactCardAdaptiveCardExtensionState {
}

const CARD_VIEW_REGISTRY_ID: string = 'ReactCard_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ReactCard_QUICK_VIEW';

export default class ReactCardAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IReactCardAdaptiveCardExtensionProps,
  IReactCardAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ReactCardPropertyPane;
  
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
      /* webpackChunkName: 'ReactCard-property-pane'*/
      './ReactCardPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ReactCardPropertyPane();
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
