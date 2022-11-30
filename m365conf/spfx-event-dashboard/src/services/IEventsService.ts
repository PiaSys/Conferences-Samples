import { ISpeaker, ISession, IAttendee } from "./EventsTypes";

/**
 * Defines the abstract interface for the Events Service
 */
export interface IEventsService {

    /**
     * Returns the whole list of Speakers in the current site
     * @returns The whole list of speakers
     */
    ListSpeakers: () => Promise<ISpeaker[]>;
 
    /**
     * Returns the whole list of Sessions in the current site
     * @returns The whole list of sessions
     */
    ListSessions: () => Promise<ISession[]>;
 
    /**
     * Returns the whole list of Attendees in the current site
     * @returns The whole list of attendees
     */
    ListAttendees: () => Promise<IAttendee[]>;
}
