import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { ConsumeGraphAcePropertyPane } from './ConsumeGraphAcePropertyPane';
import { calendarService } from '../../services/CalendarService';
import { Event } from '../../services/Event';

export interface IConsumeGraphAceAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface IConsumeGraphAceAdaptiveCardExtensionState {
  events: Event[];
}

const CARD_VIEW_REGISTRY_ID: string = 'ConsumeGraphAce_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ConsumeGraphAce_QUICK_VIEW';

export default class ConsumeGraphAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IConsumeGraphAceAdaptiveCardExtensionProps,
  IConsumeGraphAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ConsumeGraphAcePropertyPane | undefined;

  public async onInit(): Promise<void> {
    this.state = {
      events: []
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    const graphClient = await this.context.msGraphClientFactory.getClient();
    calendarService.Init(graphClient);

    setTimeout(async () => {
      const events: Event[] = await calendarService.GetTopCalendarItems();
      this.setState({
        events: events
      });
    }, 500);

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
      /* webpackChunkName: 'ConsumeGraphAce-property-pane'*/
      './ConsumeGraphAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ConsumeGraphAcePropertyPane();
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
