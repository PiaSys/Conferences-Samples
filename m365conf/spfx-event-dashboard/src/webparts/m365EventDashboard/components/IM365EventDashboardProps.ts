import { IEventsService } from "../../../services/IEventsService";

export interface IM365EventDashboardProps {
  eventsService: IEventsService;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
}
