import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardViewOne } from './cardView/CardViewOne';
import { CardViewTwo } from './cardView/CardViewTwo';
import { QuickViewOne } from './quickView/QuickViewOne';
import { QuickViewTwo } from './quickView/QuickViewTwo';
import { QuickViewThree } from './quickView/QuickViewThree';
import { NavigationSampleAcePropertyPane } from './NavigationSampleAcePropertyPane';

export interface INavigationSampleAceAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface INavigationSampleAceAdaptiveCardExtensionState {
  description: string;
  fromCard?: number;
}

const CARD_VIEW_ONE_REGISTRY_ID: string = 'NavigationSampleAce_CARD_VIEW_ONE';
export const CARD_VIEW_TWO_REGISTRY_ID: string = 'NavigationSampleAce_CARD_VIEW_TWO';
export const QUICK_VIEW_ONE_REGISTRY_ID: string = 'NavigationSampleAce_QUICK_VIEW_ONE';
export const QUICK_VIEW_TWO_REGISTRY_ID: string = 'NavigationSampleAce_QUICK_VIEW_TWO';
export const QUICK_VIEW_THREE_REGISTRY_ID: string = 'NavigationSampleAce_QUICK_VIEW_THREE';

export default class NavigationSampleAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  INavigationSampleAceAdaptiveCardExtensionProps,
  INavigationSampleAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: NavigationSampleAcePropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      description: this.properties.description
    };

    this.cardNavigator.register(CARD_VIEW_ONE_REGISTRY_ID, () => new CardViewOne());
    this.cardNavigator.register(CARD_VIEW_TWO_REGISTRY_ID, () => new CardViewTwo());
    this.quickViewNavigator.register(QUICK_VIEW_ONE_REGISTRY_ID, () => new QuickViewOne());
    this.quickViewNavigator.register(QUICK_VIEW_TWO_REGISTRY_ID, () => new QuickViewTwo());
    this.quickViewNavigator.register(QUICK_VIEW_THREE_REGISTRY_ID, () => new QuickViewThree());

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
      /* webpackChunkName: 'NavigationSampleAce-property-pane'*/
      './NavigationSampleAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.NavigationSampleAcePropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_ONE_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane!.getPropertyPaneConfiguration();
  }
}
