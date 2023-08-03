import { IDemoService } from "../../../services/IDemoService";
import { MSGraphClientV3 } from "@microsoft/sp-http";

export interface IHandleThrottlingProps {
  description: string;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  msGraphClient: MSGraphClientV3;
  demoService: IDemoService;
}
