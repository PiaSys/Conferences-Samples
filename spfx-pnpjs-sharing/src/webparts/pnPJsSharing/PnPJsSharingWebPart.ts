import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'PnPJsSharingWebPartStrings';
import PnPJsSharing from './components/PnPJsSharing';
import { IPnPJsSharingProps } from './components/IPnPJsSharingProps';
import { sp } from "@pnp/sp";

export interface IPnPJsSharingWebPartProps {
  description: string;
}

export default class PnPJsSharingWebPart extends BaseClientSideWebPart<IPnPJsSharingWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IPnPJsSharingProps > = React.createElement(
      PnPJsSharing,
      {
        spfxContext: this.context
      }
    );

    ReactDom.render(element, this.domElement);
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
