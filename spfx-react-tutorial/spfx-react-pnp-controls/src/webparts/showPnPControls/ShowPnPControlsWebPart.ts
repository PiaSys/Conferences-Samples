import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneCheckbox
} from '@microsoft/sp-webpart-base';

import * as strings from 'ShowPnPControlsWebPartStrings';
import ShowPnPControls from './components/ShowPnPControls';
import { IShowPnPControlsProps } from './components/IShowPnPControlsProps';

export interface IShowPnPControlsWebPartProps {
  title: string;
  configured: boolean;
}

export default class ShowPnPControlsWebPart extends BaseClientSideWebPart<IShowPnPControlsWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IShowPnPControlsProps > = React.createElement(
      ShowPnPControls,
      {
        title: this.properties.title,
        displayMode: this.displayMode,
        updateProperty: (value: string) => {
          this.properties.title = value;
        },
        context: this.context,
        configured: this.properties.configured,
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
                PropertyPaneCheckbox('configured', {
                  text: strings.ConfiguredFieldLabel,
                  checked: false,
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
