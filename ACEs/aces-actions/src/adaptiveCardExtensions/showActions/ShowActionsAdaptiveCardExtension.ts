import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { ShowActionsPropertyPane } from './ShowActionsPropertyPane';

export interface IShowActionsAdaptiveCardExtensionProps {
  title: string;
}

export interface IShowActionsAdaptiveCardExtensionState {
  shortText: string;
  longText: string;
  phone: string;
  url: string;
  email: string;
  number: number;
  date: Date;
  flag: boolean;
  category: string[];
}

const CARD_VIEW_REGISTRY_ID: string = 'ShowActions_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ShowActions_QUICK_VIEW';

export default class ShowActionsAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IShowActionsAdaptiveCardExtensionProps,
  IShowActionsAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ShowActionsPropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      shortText: "Initial value ...",
      longText: "This is a long text, on multiple lines",
      phone: "+1-702-1234567",
      url: "https://pnp.github.io/",
      email: "paolo@pialorsi.com",
      number: 1,
      date: new Date(),
      flag: true,
      category: ["C1", "C3"]
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    return Promise.resolve();
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'ShowActions-property-pane'*/
      './ShowActionsPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ShowActionsPropertyPane();
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
