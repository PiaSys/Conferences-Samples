import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'EventCardAdaptiveCardExtensionStrings';
import { IEventCardAdaptiveCardExtensionProps } from '../IEventCardAdaptiveCardExtensionProps';
import { IEventCardAdaptiveCardExtensionState, EventSession } from '../IEventCardAdaptiveCardExtensionState';
import { QUICK_VIEW_CONFIRM_ID } from '../EventCardAdaptiveCardExtension';
import { QUICK_VIEW_ERROR_ID } from '../EventCardAdaptiveCardExtension';

export interface IListSessionsQuickViewData {
  subTitle: string;
  title: string;
  imageUpUrl: string;
  imageDownUrl: string;
  events: EventSession[];
}

export class ListSessionsQuickView extends BaseAdaptiveCardView<
  IEventCardAdaptiveCardExtensionProps,
  IEventCardAdaptiveCardExtensionState,
  IListSessionsQuickViewData
> {
  public get data(): IListSessionsQuickViewData {
    return {
      subTitle: strings.ListSessionsQuickView.SubTitle,
      title: strings.ListSessionsQuickView.Title,
      imageUpUrl:  require('../assets/up.png'),
      imageDownUrl:  require('../assets/down.png'),
      events: this.state.events
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/ListSessionsQuickViewTemplate.json');
  }

  public async onAction(action: IActionArguments | any): Promise<void> {

    // Get the ID of the button pressed by the user
    const actionId = <string>action.id;

    // Check if the actionId is the one of an Action.Submit button with ID addToMyAgenda*
    if (actionId.substring(0, 13) === "addToMyAgenda") {
      // Invoke the function to add the item to currenct user's agenda
      if (await this.properties.addToUsersAgenda(action.data.id)) {
        this.quickViewNavigator.replace(QUICK_VIEW_CONFIRM_ID);
      } else {
        this.setState({
          error: 'Failed to add the session to your agenda'
        });
        this.quickViewNavigator.replace(QUICK_VIEW_ERROR_ID);
      }
    }
  }
}