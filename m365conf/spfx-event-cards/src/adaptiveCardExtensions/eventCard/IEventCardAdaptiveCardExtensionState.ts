export interface IEventCardAdaptiveCardExtensionState {
    error?: string;
    events?: EventSession[];
}

export interface EventSession {
    id: string;
    subject: string;
    bodyPreview: string;
    start: CalendarDateTime;
    end: CalendarDateTime;
}

export interface CalendarDateTime {
    dateTime: Date;
    timeZone: string;
}
  