import { WebPartContext } from "@microsoft/sp-webpart-base";

export interface IProvisionTeamRequestProps {
  templatesSiteUrl: string;
  templatesLibrary: string;
  requestsSiteUrl: string;
  requestsList: string;
  context: WebPartContext;
}
