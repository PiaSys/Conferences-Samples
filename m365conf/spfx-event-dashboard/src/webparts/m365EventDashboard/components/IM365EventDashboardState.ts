import { ISpeaker, ISession, IAttendee } from "../../../services/EventsTypes";

export interface IM365EventDashboardState {
  loading: boolean;
  error?: string;
  speakers: ISpeaker[];
  sessions: ISession[];
  attendees: IAttendee[];
}
