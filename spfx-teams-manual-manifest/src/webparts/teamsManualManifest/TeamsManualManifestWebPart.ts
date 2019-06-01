import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';

import * as strings from 'TeamsManualManifestWebPartStrings';
import TeamsManualManifest from './components/TeamsManualManifest';
import { ITeamsManualManifestProps } from './components/ITeamsManualManifestProps';

import * as microsoftTeams from '@microsoft/teams-js';

export interface ITeamsManualManifestWebPartProps {
  description: string;
}

export default class TeamsManualManifestWebPart extends BaseClientSideWebPart<ITeamsManualManifestWebPartProps> {

  private _teamsContext: microsoftTeams.Context;

  public onInit(): Promise<any> {
    let retVal: Promise<any> = Promise.resolve();
    if (this.context.microsoftTeams) {
      retVal = new Promise((resolve, reject) => {
        this.context.microsoftTeams.getContext(context => {
          this._teamsContext = context;
          resolve();
        });
      });
    }
    return retVal;  
  }

  public render(): void {
    const element: React.ReactElement<ITeamsManualManifestProps > = React.createElement(
      TeamsManualManifest,
      {
        description: this.properties.description,
        teamsContext: this._teamsContext,
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
