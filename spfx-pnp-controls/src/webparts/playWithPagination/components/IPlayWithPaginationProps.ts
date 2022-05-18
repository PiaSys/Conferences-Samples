import { WebPartContext } from "@microsoft/sp-webpart-base";

export interface IPlayWithPaginationProps {
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  targetListTitle: string;
  context: WebPartContext;
}
