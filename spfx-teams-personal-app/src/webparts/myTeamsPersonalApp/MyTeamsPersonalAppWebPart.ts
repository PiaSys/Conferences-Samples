import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'MyTeamsPersonalAppWebPartStrings';
import MyTeamsPersonalApp from './components/MyTeamsPersonalApp';
import { IMyTeamsPersonalAppProps } from './components/IMyTeamsPersonalAppProps';

export interface IMyTeamsPersonalAppWebPartProps {
  description: string;
}

export default class MyTeamsPersonalAppWebPart extends BaseClientSideWebPart <IMyTeamsPersonalAppWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IMyTeamsPersonalAppProps> = React.createElement(
      MyTeamsPersonalApp,
      {
        description: this.properties.description,
        teamsContext: this.context.sdks.microsoftTeams,
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
