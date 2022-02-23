import { Event } from './Event';
import { MSGraphClient } from '@microsoft/sp-http';

export interface ICalendarService {
    Init: (graphClient: MSGraphClient) => void;
    CreateEvent: (subject: string, startDateTime: Date, endDateTime: Date) => Promise<Event>;
}

export class CalendarService implements ICalendarService {

    private graphClient: MSGraphClient;

    public Init(graphClient: MSGraphClient): void {
        this.graphClient = graphClient;
    }

    public async CreateEvent(subject: string, startDateTime: Date, endDateTime: Date): Promise<Event> {
        if (this.graphClient === undefined) {
            throw new Error('CalendarService not initialized!');
        }

        var event: Event = {
            subject: subject,
            start: {
                dateTime: startDateTime,
                timeZone: "GMT"
            },
            end: {
                dateTime: endDateTime,
                timeZone: "GMT"
            },
            isOnlineMeeting: true
        };

        var newEvent = await this.graphClient
            .api("me/events")
            .version("v1.0")
            .post(event);

        return newEvent;
    }
}

export const calendarService = new CalendarService();