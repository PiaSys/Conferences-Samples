import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import * as microsoftTeams from '@microsoft/teams-js';

import * as strings from 'SampleTeamTabWebPartStrings';
import SampleTeamTab from './components/SampleTeamTab';
import { ISampleTeamTabProps } from './components/ISampleTeamTabProps';

export interface ISampleTeamTabWebPartProps {
  description: string;
}

export default class SampleTeamTabWebPart extends BaseClientSideWebPart <ISampleTeamTabWebPartProps> {

  public render(): void {
    const element: React.ReactElement<ISampleTeamTabProps> = React.createElement(
      SampleTeamTab,
      {
        description: this.properties.description,
        teamsContext: this.context.sdks.microsoftTeams ? this.context.sdks.microsoftTeams.context : null
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
