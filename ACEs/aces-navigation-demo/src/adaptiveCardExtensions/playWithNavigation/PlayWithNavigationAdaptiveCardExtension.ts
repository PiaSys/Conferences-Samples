import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { StartCardView } from './cardView/StartCardView';
import { EndCardView } from './cardView/EndCardView';
import { StartQuickView } from './quickView/StartQuickView';
import { ReplacedQuickView } from './quickView/ReplacedQuickView';
import { PushedQuickView } from './quickView/PushedQuickView';
import { PlayWithNavigationPropertyPane } from './PlayWithNavigationPropertyPane';

export interface IPlayWithNavigationAdaptiveCardExtensionProps {
  title: string;
}

export interface IPlayWithNavigationAdaptiveCardExtensionState {
}

export const START_CARD_VIEW_REGISTRY_ID: string = 'PlayWithNavigation_START_CARD_VIEW';
export const END_CARD_VIEW_REGISTRY_ID: string = 'PlayWithNavigation_END_CARD_VIEW';
export const START_QUICK_VIEW_REGISTRY_ID: string = 'PlayWithNavigation_START_QUICK_VIEW';
export const REPLACED_QUICK_VIEW_REGISTRY_ID: string = 'PlayWithNavigation_REPLACED_QUICK_VIEW';
export const PUSHED_QUICK_VIEW_REGISTRY_ID: string = 'PlayWithNavigation_PUSHED_QUICK_VIEW';

export default class PlayWithNavigationAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IPlayWithNavigationAdaptiveCardExtensionProps,
  IPlayWithNavigationAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: PlayWithNavigationPropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = { };

    this.cardNavigator.register(START_CARD_VIEW_REGISTRY_ID, () => new StartCardView());
    this.cardNavigator.register(END_CARD_VIEW_REGISTRY_ID, () => new EndCardView());
    this.quickViewNavigator.register(START_QUICK_VIEW_REGISTRY_ID, () => new StartQuickView());
    this.quickViewNavigator.register(REPLACED_QUICK_VIEW_REGISTRY_ID, () => new ReplacedQuickView());
    this.quickViewNavigator.register(PUSHED_QUICK_VIEW_REGISTRY_ID, () => new PushedQuickView());

    return Promise.resolve();
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'PlayWithNavigation-property-pane'*/
      './PlayWithNavigationPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.PlayWithNavigationPropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return START_CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane!.getPropertyPaneConfiguration();
  }
}
