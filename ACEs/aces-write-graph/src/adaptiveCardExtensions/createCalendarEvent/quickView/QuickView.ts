import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'CreateCalendarEventAdaptiveCardExtensionStrings';
import { ICreateCalendarEventAdaptiveCardExtensionProps, ICreateCalendarEventAdaptiveCardExtensionState } from '../CreateCalendarEventAdaptiveCardExtension';
import { calendarService } from '../../../services/CalendarService';
import { Event } from '../../../services/Event';

export interface IQuickViewData {
  subTitle: string;
  title: string;
}

export class QuickView extends BaseAdaptiveCardView<
  ICreateCalendarEventAdaptiveCardExtensionProps,
  ICreateCalendarEventAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }

  public async onAction(action: IActionArguments | any): Promise<void> {
    if (action.id == "Submit") {

      const newEvent: Event = await calendarService.CreateEvent(
        action.data.subject,
        new Date(`${action.data.startDate} ${action.data.startTime}`),
        new Date(`${action.data.endDate} ${action.data.endTime}`));

      console.log(newEvent);

      this.quickViewNavigator.close();
    }
  }
}