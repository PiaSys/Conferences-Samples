import { IDropdownOption } from 'office-ui-fabric-react/lib/Dropdown';

export interface IProvisionTeamRequestState {
  templates: IDropdownOption[];
  teamTitle?: string;
  teamAlias?: string;
  teamOwners?: string[];
  teamMembers?: string[];
  teamTemplateUri?: string;
}
