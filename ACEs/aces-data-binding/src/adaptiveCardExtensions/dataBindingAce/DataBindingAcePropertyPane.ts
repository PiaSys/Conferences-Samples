import { IPropertyPaneConfiguration, PropertyPaneDropdown, PropertyPaneTextField } from '@microsoft/sp-property-pane';
import * as strings from 'DataBindingAceAdaptiveCardExtensionStrings';

export class DataBindingAcePropertyPane {
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
                PropertyPaneDropdown('statusFilter', {
                  label: strings.StatusFilterFieldLabel,
                  options: [
                    {
                      key: -1,
                      text: "(No filter)"
                    },
                    {
                      key: 0,
                      text: "Inserted"
                    },
                    {
                      key: 1,
                      text: "Processed"
                    },
                    {
                      key: 2,
                      text: "Delivered"
                    },
                    {
                      key: 3,
                      text: "Completed"
                    }
                  ]
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
