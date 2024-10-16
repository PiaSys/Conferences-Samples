import { MSGraphClientV3 } from '@microsoft/sp-http';

export interface IUseMsGraphDemoProps {
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  graphClient: MSGraphClientV3;
}
