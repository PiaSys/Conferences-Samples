import { IDropdownOption } from 'office-ui-fabric-react/lib/Dropdown';

export interface IProvisioningRequestState {
  templates: IDropdownOption[];
  siteTitle?: string;
  siteOwners?: number[];
  siteMembers?: number[];
  siteTemplateUri?: string;
  siteType?: string;
  targetOrganization?: string;
}
