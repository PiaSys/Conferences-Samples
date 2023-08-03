import { IDemoService } from "../../../services/IDemoService";

export interface IHandleThrottlingProps {
  description: string;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  demoService: IDemoService;
}
