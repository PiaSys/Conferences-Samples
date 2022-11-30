import { app } from '@microsoft/teams-js-v2';

export interface ITeamsPlayWithContextProps {
  appContext: app.Context;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
}
