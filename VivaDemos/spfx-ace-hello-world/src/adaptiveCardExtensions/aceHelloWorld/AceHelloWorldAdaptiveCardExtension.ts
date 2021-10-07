import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { AceHelloWorldPropertyPane } from './AceHelloWorldPropertyPane';

export interface IAceHelloWorldAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface IAceHelloWorldAdaptiveCardExtensionState {
  description: string;
}

const CARD_VIEW_REGISTRY_ID: string = 'AceHelloWorld_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'AceHelloWorld_QUICK_VIEW';

export default class AceHelloWorldAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IAceHelloWorldAdaptiveCardExtensionProps,
  IAceHelloWorldAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: AceHelloWorldPropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      description: this.properties.description
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

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
      /* webpackChunkName: 'AceHelloWorld-property-pane'*/
      './AceHelloWorldPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.AceHelloWorldPropertyPane();
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
