export interface ICalendarEvent {
    body: {
        content: string;
        contentType: string;
    };
    bodyPreview: string;
    importance: string;
    location: {
        displayName: string;
    };
    organizer: {
        emailAddress: IRecipient;
    };
    attendees: IAttendee[];
    start: IMeetingTime;
    end: IMeetingTime;
    subject: string;
    type: string;
}

export interface IAttendee {
    type: string;
    emailAddress: IRecipient;
}

export interface IRecipient {
    address: string;
    name: string;
}

export interface IMeetingTime {
    dateTime: string;
    timeZone: string;
}