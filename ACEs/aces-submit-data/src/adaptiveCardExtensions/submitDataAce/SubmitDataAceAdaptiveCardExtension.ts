import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { ChooseMenuQuickView } from './quickView/ChooseMenuQuickView';
import { ConfirmMenuQuickView } from './quickView/ConfirmMenuQuickView';
import { SubmitDataAcePropertyPane } from './SubmitDataAcePropertyPane';
import * as strings from 'SubmitDataAceAdaptiveCardExtensionStrings';

export interface ISubmitDataAceAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface ISubmitDataAceAdaptiveCardExtensionState {
  description: string;
  mainCourse: string;
  dessert: string;
  beverages: string;
}

const CARD_VIEW_REGISTRY_ID: string = 'SubmitDataAce_CARD_VIEW';
export const QUICK_VIEW_CHOOSE_MENU_REGISTRY_ID: string = 'SubmitDataAce_QUICK_VIEW_CHOOSE_MENU';
export const QUICK_VIEW_CONFIRM_MENU_REGISTRY_ID: string = 'SubmitDataAce_QUICK_VIEW_CONFIRM_MENU';

export default class SubmitDataAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  ISubmitDataAceAdaptiveCardExtensionProps,
  ISubmitDataAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: SubmitDataAcePropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      description: this.properties.description.length > 0 ? this.properties.description : strings.Description,
      mainCourse: '',
      dessert: '',
      beverages: ''
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_CHOOSE_MENU_REGISTRY_ID, () => new ChooseMenuQuickView());
    this.quickViewNavigator.register(QUICK_VIEW_CONFIRM_MENU_REGISTRY_ID, () => new ConfirmMenuQuickView());

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
      /* webpackChunkName: 'SubmitDataAce-property-pane'*/
      './SubmitDataAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.SubmitDataAcePropertyPane();
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
