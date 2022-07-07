import { WebPartContext } from "@microsoft/sp-webpart-base";

export interface IPLayWithDynamicFormProps {
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  context: WebPartContext;
  targetListId: string;
  targetItemId: number;
}
