import { IPropertyPaneConfiguration, PropertyPaneTextField } from '@microsoft/sp-property-pane';
import * as strings from 'PnPPropertiesAceAdaptiveCardExtensionStrings';

import { IPnPPropertiesAceAdaptiveCardExtensionProps } from './PnPPropertiesAceAdaptiveCardExtension';
import { PropertyFieldDateTimePicker, DateConvention, TimeConvention } from '@pnp/spfx-property-controls/lib/PropertyFieldDateTimePicker';

export class PnPPropertiesAcePropertyPane {

  private properties: IPnPPropertiesAceAdaptiveCardExtensionProps;
  private onPropertyChanged: (propertyPath: string, oldValue: any, newValue: any) => void;

  constructor(properties: IPnPPropertiesAceAdaptiveCardExtensionProps, onPropertyChanged: (propertyPath: string, oldValue: any, newValue: any) => void) {
    this.properties = properties;  
    this.onPropertyChanged = onPropertyChanged;  
  }

  public getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return {
      pages: [
        {
          header: { description: strings.PropertyPaneDescription },
          groups: [
            {
              groupName: strings.BasicGroupName,
              groupFields: [
                PropertyPaneTextField('title', {
                  label: strings.TitleFieldLabel
                }),
                PropertyPaneTextField('iconProperty', {
                  label: strings.IconPropertyFieldLabel
                }),
                PropertyPaneTextField('description', {
                  label: strings.DescriptionFieldLabel,
                  multiline: true
                }),
                PropertyFieldDateTimePicker('datetime', {
                  label: 'Select the date and time',
                  initialDate: this.properties.datetime,
                  dateConvention: DateConvention.DateTime,
                  timeConvention: TimeConvention.Hours12,
                  onPropertyChange: this.onPropertyChanged,
                  properties: this.properties,
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'dateTimeFieldId',
                  showLabels: false
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
