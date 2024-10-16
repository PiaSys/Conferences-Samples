import type { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { FlexibleAcePropertyPane } from './FlexibleAcePropertyPane';

export interface IFlexibleAceAdaptiveCardExtensionProps {
  title: string;
}

export interface IFlexibleAceAdaptiveCardExtensionState {
}

const CARD_VIEW_REGISTRY_ID: string = 'FlexibleAce_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'FlexibleAce_QUICK_VIEW';

export default class FlexibleAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IFlexibleAceAdaptiveCardExtensionProps,
  IFlexibleAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: FlexibleAcePropertyPane;

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
      /* webpackChunkName: 'FlexibleAce-property-pane'*/
      './FlexibleAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.FlexibleAcePropertyPane();
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
