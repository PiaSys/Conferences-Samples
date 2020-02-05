import { BaseClientSideWebPart, IMicrosoftTeams } from '@microsoft/sp-webpart-base';

export interface IMyTeamsPersonalAppProps {
  description: string;
  teamsContext: IMicrosoftTeams;
}
