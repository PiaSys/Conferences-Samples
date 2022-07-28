import { IListsService } from "../../../services/ListsService/IListsService";

export interface IConsumePnPjsServiceClassProps {
  description: string;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  listsService: IListsService;
}
