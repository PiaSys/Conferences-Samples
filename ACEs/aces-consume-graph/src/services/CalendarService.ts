import { Event } from './Event';
import { MSGraphClient } from '@microsoft/sp-http';

interface EventsList {
    value: Event[];
}

export interface ICalendarService {
    Init: (graphClient: MSGraphClient) => void;
    GetTopCalendarItems: () => Promise<Event[]>;
}

export class CalendarService implements ICalendarService {

    private graphClient: MSGraphClient;

    public Init(graphClient: MSGraphClient): void {
        this.graphClient = graphClient;
    }

    public async GetTopCalendarItems(): Promise<Event[]> {
        if (this.graphClient === undefined) {
            throw new Error('CalendarService not initialized!');
        }

        var events: EventsList = await this.graphClient
            .api("me/events")
            .version("v1.0")
            .select("subject,start,end,isOnlineMeeting,webLink")
            .get();

        return events.value;
    }
}

export const calendarService = new CalendarService();