import { IEventsService } from "../../../services/IEventsService";

export interface IM365EventDashboardProps {
  eventsService: IEventsService;
  teamId: string;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
}
