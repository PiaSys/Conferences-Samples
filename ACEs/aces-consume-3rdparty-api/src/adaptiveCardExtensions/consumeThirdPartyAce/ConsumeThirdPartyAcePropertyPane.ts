import { IPropertyPaneConfiguration, PropertyPaneTextField } from '@microsoft/sp-property-pane';
import * as strings from 'ConsumeThirdPartyAceAdaptiveCardExtensionStrings';

export class ConsumeThirdPartyAcePropertyPane {
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
                PropertyPaneTextField('quoteServiceUrl', {
                  label: strings.QuoteServiceUrlFieldLabel
                }),
                PropertyPaneTextField('symbols', {
                  label: strings.SymbolsFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
