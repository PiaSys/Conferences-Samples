import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'PnPJsSample01WebPartStrings';
import PnPJsSample01 from './components/PnPJsSample01';
import { IPnPJsSample01Props } from './components/IPnPJsSample01Props';

export interface IPnPJsSample01WebPartProps {
  description: string;
}

export default class PnPJsSample01WebPart extends BaseClientSideWebPart <IPnPJsSample01WebPartProps> {

  public render(): void {
    const element: React.ReactElement<IPnPJsSample01Props> = React.createElement(
      PnPJsSample01,
      {
        context: this.context
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
