import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'UseMgtWebPartStrings';
import UseMgt from './components/UseMgt';
import { IUseMgtProps } from './components/IUseMgtProps';
import {Providers, SharePointProvider} from '@microsoft/mgt-spfx';

export interface IUseMgtWebPartProps {
  description: string;
}

export default class UseMgtWebPart extends BaseClientSideWebPart<IUseMgtWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IUseMgtProps> = React.createElement(
      UseMgt,
      {
        description: this.properties.description
      }
    );

    ReactDom.render(element, this.domElement);
  }

  protected async onInit() {
    Providers.globalProvider = new SharePointProvider(this.context);
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
