import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { PnPPropertiesAcePropertyPane } from './PnPPropertiesAcePropertyPane';

import { IDateTimeFieldValue } from "@pnp/spfx-property-controls/lib/PropertyFieldDateTimePicker";

export interface IPnPPropertiesAceAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
  datetime: IDateTimeFieldValue;
}

export interface IPnPPropertiesAceAdaptiveCardExtensionState {
  description: string;
}

const CARD_VIEW_REGISTRY_ID: string = 'PnPPropertiesAce_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'PnPPropertiesAce_QUICK_VIEW';

export default class PnPPropertiesAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IPnPPropertiesAceAdaptiveCardExtensionProps,
  IPnPPropertiesAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: PnPPropertiesAcePropertyPane | undefined;

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
      /* webpackChunkName: 'PnPPropertiesAce-property-pane'*/
      './PnPPropertiesAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.PnPPropertiesAcePropertyPane(this.properties, this.onPropertyPaneFieldChanged);
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane!.getPropertyPaneConfiguration();
  }

  protected onPropertyPaneFieldChanged(propertyPath: string, oldValue: any, newValue: any): void {
      console.log(`${propertyPath} changed from ${oldValue} to ${newValue}`);
  }
}
