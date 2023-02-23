/**
 * Defines the abstract interface for a Speaker
 */
export interface ISpeaker {
    id: string;
    title: string;
    email: string;
    expertise: SpeakerExpertise;
}

/**
 * Defines the expertise levels for speakers
 */
 export enum SpeakerExpertise {
    Novice = 'Novice',
    Regular = 'Regular',
    Expert = 'Expert'
}

/**
 * Defines the abstract interface for a Session
 */
 export interface ISession {
    id: string;
    title: string;
    topic: string;
    level: number;
    speaker: ISpeaker;
    approved: boolean;
}

/**
 * Defines the abstract interface for a Attendee
 */
 export interface IAttendee {
    id: string;
    title: string;
    company: string;
    email: string;
}

