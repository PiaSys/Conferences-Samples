export interface Event {
    subject: string;
    start: EventDateTime;
    end: EventDateTime;
    isOnlineMeeting: boolean;
    webLink: string;
}

export interface EventDateTime {
    dateTime: Date;
    timeZone: string;
}