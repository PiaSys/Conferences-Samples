import { IPropertyPaneConfiguration, PropertyPaneTextField } from '@microsoft/sp-property-pane';
import * as strings from 'EventCardAdaptiveCardExtensionStrings';

export class EventCardPropertyPane {
  public getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return {
      pages: [
        {
          header: { description: strings.PropertyPane.PropertyPaneDescription },
          groups: [
            {
              groupFields: [
                PropertyPaneTextField('title', {
                  label: strings.PropertyPane.TitleFieldLabel
                }),
                PropertyPaneTextField('groupId', {
                  label: strings.PropertyPane.GroupIdFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
