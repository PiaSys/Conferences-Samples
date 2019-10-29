import { IPropertyFieldGroupOrPerson } from "@pnp/spfx-property-controls/lib/PropertyFieldPeoplePicker";
import { IDateTimeFieldValue } from "@pnp/spfx-property-controls/lib/PropertyFieldDateTimePicker";
import { IPickerTerms } from "@pnp/spfx-property-controls/lib/PropertyFieldTermPicker";

export interface IConfigurableTeamsTabProps {
  people: IPropertyFieldGroupOrPerson[];
  datetime: IDateTimeFieldValue;
  terms: IPickerTerms;
}
