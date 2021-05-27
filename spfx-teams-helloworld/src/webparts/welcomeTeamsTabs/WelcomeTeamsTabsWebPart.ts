import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';

import * as strings from 'WelcomeTeamsTabsWebPartStrings';
import WelcomeTeamsTabs from './components/WelcomeTeamsTabs';
import { IWelcomeTeamsTabsProps } from './components/IWelcomeTeamsTabsProps';

export interface IWelcomeTeamsTabsWebPartProps {
  description: string;
}

export default class WelcomeTeamsTabsWebPart extends BaseClientSideWebPart<IWelcomeTeamsTabsWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IWelcomeTeamsTabsProps > = React.createElement(
      WelcomeTeamsTabs,
      {
        description: this.properties.description,
        teamsContext: this.context.sdks.microsoftTeams != null ? this.context.sdks.microsoftTeams.context : null,
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
