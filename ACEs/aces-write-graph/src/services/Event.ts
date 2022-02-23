export interface Event {
    subject: string;
    start: EventDateTime;
    end: EventDateTime;
    isOnlineMeeting: boolean;
}

export interface EventDateTime {
    dateTime: Date;
    timeZone: string;
}