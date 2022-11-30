import { IEventsService } from "../../../services/IEventsService";

export interface IM365EventDashboardProps {
  eventsService: IEventsService;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
}
