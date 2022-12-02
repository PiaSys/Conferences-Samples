import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { ListSessionsQuickView } from './quickView/ListSessionsQuickView';
import { ErrorQuickView } from './quickView/ErrorQuickView';
import { ConfirmQuickView } from './quickView/ConfirmQuickView';
import { EventCardPropertyPane } from './EventCardPropertyPane';

import { IEventCardAdaptiveCardExtensionProps } from './IEventCardAdaptiveCardExtensionProps';
import { IEventCardAdaptiveCardExtensionState, EventSession } from './IEventCardAdaptiveCardExtensionState';

import { MSGraphClientV3 } from '@microsoft/sp-http';

const CARD_VIEW_MAIN_ID: string = 'CARD_VIEW_Main';
export const QUICK_VIEW_LIST_EVENTS_ID: string = 'QUICK_VIEW_List_Events';
export const QUICK_VIEW_CONFIRM_ID = 'QUICK_VIEW_Confirm';
export const QUICK_VIEW_ERROR_ID = 'QUICK_VIEW_Error';

export default class EventCardAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IEventCardAdaptiveCardExtensionProps,
  IEventCardAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: EventCardPropertyPane | undefined;
  private _graphClient: MSGraphClientV3 = null;

  public async onInit(): Promise<void> {
    this.state = { };

    this.cardNavigator.register(CARD_VIEW_MAIN_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_LIST_EVENTS_ID, () => new ListSessionsQuickView());
    this.quickViewNavigator.register(QUICK_VIEW_CONFIRM_ID, () => new ConfirmQuickView());
    this.quickViewNavigator.register(QUICK_VIEW_ERROR_ID, () => new ErrorQuickView());

    this.properties.addToUsersAgenda = this.addToUsersAgenda;
    await this.loadEvents();

    return Promise.resolve();
  }

  private loadEvents = async(): Promise<void> => {
    // Read the current group ID
    const groupId: string =  this.context.pageContext.site.group.id._guid;

    // Get the Microsoft Graph client object, if needed
    if (this._graphClient === null) {
      this._graphClient = await this.context.msGraphClientFactory.getClient('3');
    }

    // Read the calendar events from the current group
    const events: { value: EventSession[] } = await this._graphClient
      .api(`/groups/${groupId}/calendar/events`)
      .version('v1.0')
      .select('id,subject,bodyPreview,start,end')
      .get();

    this.setState({
      events: events.value
    });
  }

  private addToUsersAgenda = async (id: string): Promise<boolean> => {

    // Get the Microsoft Graph client object, if needed
    if (this._graphClient === null) {
      this._graphClient = await this.context.msGraphClientFactory.getClient('3');
    }

    const targetEvents: EventSession[] = this.state.events
      .filter(e => e.id === id);

    if (targetEvents.length === 1) {
      // Add the event to current user's agenda
      await this._graphClient
        .api(`/me/calendar/events`)
        .version('v1.0')
        .post({
          subject: targetEvents[0].subject,
          bodyPreview: targetEvents[0].bodyPreview,
          start: targetEvents[0].start,
          end: targetEvents[0].end
        });

        return true;
    } else {
      return false;
    }
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'EventCard-property-pane'*/
      './EventCardPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.EventCardPropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_MAIN_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane?.getPropertyPaneConfiguration();
  }
}
