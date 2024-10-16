import type { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { TextboxAcePropertyPane } from './TextboxAcePropertyPane';

export interface ITextboxAceAdaptiveCardExtensionProps {
  title: string;
}

export interface ITextboxAceAdaptiveCardExtensionState {
}

const CARD_VIEW_REGISTRY_ID: string = 'TextboxAce_CARD_VIEW';

export default class TextboxAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  ITextboxAceAdaptiveCardExtensionProps,
  ITextboxAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: TextboxAcePropertyPane;

  public onInit(): Promise<void> {
    this.state = { };

    // registers the card view to be shown in a dashboard
    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());

    return Promise.resolve();
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'TextboxAce-property-pane'*/
      './TextboxAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.TextboxAcePropertyPane();
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
