import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';

import * as strings from 'TeamsGraphConsumerWebPartStrings';
import TeamsGraphConsumer from './components/TeamsGraphConsumer';
import { ITeamsGraphConsumerProps } from './components/ITeamsGraphConsumerProps';

import * as microsoftTeams from '@microsoft/teams-js';
import { MSGraphClient, AadHttpClient, AadTokenProvider } from "@microsoft/sp-http";

export default class TeamsGraphConsumerWebPart extends BaseClientSideWebPart<{}> {

  private _graphClient: MSGraphClient;
  private _teamsContext: microsoftTeams.Context;

  public async onInit(): Promise<any> {
    let retVal: Promise<any> = Promise.resolve();

    this._graphClient = await this.context.msGraphClientFactory
      .getClient();

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
    const element: React.ReactElement<ITeamsGraphConsumerProps > = React.createElement(
      TeamsGraphConsumer,
      {
        graphClient: this._graphClient,
        teamsContext: this._teamsContext,
        spfxContext: this.context,
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
              groupFields: []
            }
          ]
        }
      ]
    };
  }
}
