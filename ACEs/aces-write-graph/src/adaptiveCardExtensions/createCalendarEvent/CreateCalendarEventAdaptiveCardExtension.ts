import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { CreateCalendarEventPropertyPane } from './CreateCalendarEventPropertyPane';
import { calendarService } from '../../services/CalendarService';

export interface ICreateCalendarEventAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface ICreateCalendarEventAdaptiveCardExtensionState {
}

const CARD_VIEW_REGISTRY_ID: string = 'CreateCalendarEvent_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'CreateCalendarEvent_QUICK_VIEW';

export default class CreateCalendarEventAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  ICreateCalendarEventAdaptiveCardExtensionProps,
  ICreateCalendarEventAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: CreateCalendarEventPropertyPane | undefined;

  public async onInit(): Promise<void> {
    this.state = {
    };

    const graphClient = await this.context.msGraphClientFactory.getClient();
    calendarService.Init(graphClient);

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
      /* webpackChunkName: 'CreateCalendarEvent-property-pane'*/
      './CreateCalendarEventPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.CreateCalendarEventPropertyPane();
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
