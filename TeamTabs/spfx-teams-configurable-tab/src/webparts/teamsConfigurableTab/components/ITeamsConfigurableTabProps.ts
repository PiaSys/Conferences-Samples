import { 
  IPropertyFieldGroupOrPerson,
  IDateTimeFieldValue,
  IPickerTerms
 } from '@pnp/spfx-property-controls';
 
 export interface ITeamsConfigurableTabProps {
  people: IPropertyFieldGroupOrPerson[];
  datetime: IDateTimeFieldValue;
  terms: IPickerTerms;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
}
