import * as microsoftTeams from '@microsoft/teams-js';
import { MSGraphClient } from "@microsoft/sp-http";
import { WebPartContext } from '@microsoft/sp-webpart-base';

export interface ITeamsGraphConsumerProps {
  graphClient: MSGraphClient;
  teamsContext: microsoftTeams.Context;
  spfxContext: WebPartContext;
}
