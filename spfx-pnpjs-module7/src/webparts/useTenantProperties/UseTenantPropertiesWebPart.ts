import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'UseTenantPropertiesWebPartStrings';
import UseTenantProperties from './components/UseTenantProperties';
import { IUseTenantPropertiesProps } from './components/IUseTenantPropertiesProps';

export interface IUseTenantPropertiesWebPartProps {
  appCatalogUrl: string;
}

export default class UseTenantPropertiesWebPart extends BaseClientSideWebPart <IUseTenantPropertiesWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IUseTenantPropertiesProps> = React.createElement(
      UseTenantProperties,
      {
        context: this.context,
        appCatalogUrl: this.properties.appCatalogUrl
      }
    );

    ReactDom.render(element, this.domElement);
  }

  protected onDispose(): void {
    ReactDom.unmountComponentAtNode(this.domElement);
  }

  protected get dataVersion(): Version {
    return Version.parse('1.0');
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return {
      pages: [
        {
          header: {
            description: strings.PropertyPaneDescription
          },
          groups: [
            {
              groupName: strings.BasicGroupName,
              groupFields: [
                PropertyPaneTextField('appCatalogUrl', {
                  label: strings.AppCatalogUrlFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
