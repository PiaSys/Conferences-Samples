import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'OfficeUiFabricDemoWebPartStrings';
import OfficeUiFabricDemo from './components/OfficeUiFabricDemo';
import { IOfficeUiFabricDemoProps } from './components/IOfficeUiFabricDemoProps';

export interface IOfficeUiFabricDemoWebPartProps {
  description: string;
}

export default class OfficeUiFabricDemoWebPart extends BaseClientSideWebPart<IOfficeUiFabricDemoWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IOfficeUiFabricDemoProps > = React.createElement(
      OfficeUiFabricDemo,
      {
        description: this.properties.description
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
                PropertyPaneTextField('description', {
                  label: strings.DescriptionFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
