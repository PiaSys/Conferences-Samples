import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'ShowPnPJsWebPartStrings';
import ShowPnPJs from './components/ShowPnPJs';
import { IShowPnPJsProps } from './components/IShowPnPJsProps';
import { AadTokenProvider } from '@microsoft/sp-http';

export interface IShowPnPJsWebPartProps {
  description: string;
}

export default class ShowPnPJsWebPart extends BaseClientSideWebPart<IShowPnPJsWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IShowPnPJsProps > = React.createElement(
      ShowPnPJs,
      {
        context: this.context,
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
