import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';

import * as strings from 'PlayWithOAuthTokensWebPartStrings';
import PlayWithOAuthTokens from './components/PlayWithOAuthTokens';
import { IPlayWithOAuthTokensProps } from './components/IPlayWithOAuthTokensProps';
import { MSGraphClient, AadHttpClient, AadTokenProvider } from "@microsoft/sp-http";

export interface IPlayWithOAuthTokensWebPartProps {
  title: string;
  functionUri: string;
}

export default class PlayWithOAuthTokensWebPart extends BaseClientSideWebPart<IPlayWithOAuthTokensWebPartProps> {

  private graphClient: MSGraphClient;
  private aadHttpClient: AadHttpClient;
  private aadTokenProvider: AadTokenProvider;

  public async onInit(): Promise<void> {

    this.graphClient = await this.context.msGraphClientFactory
      .getClient();
    this.aadHttpClient = await this.context.aadHttpClientFactory
      .getClient("https://officedevpnp.onmicrosoft.com/spfx-lob-function");
    this.aadTokenProvider = await this.context.aadTokenProviderFactory
      .getTokenProvider();
      
  }

  public render(): void {
    const element: React.ReactElement<IPlayWithOAuthTokensProps > = React.createElement(
      PlayWithOAuthTokens,
      {
        displayMode: this.displayMode,
        title: this.properties.title,
        updateProperty: (value: string): void => {
          // store the new title in the title web part property
          this.properties.title = value;
        },
        functionUri: this.properties.functionUri,
        graphClient: this.graphClient,
        aadHttpClient: this.aadHttpClient,
        aadTokenProvider: this.aadTokenProvider,
        httpClient: this.context.httpClient,
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
                PropertyPaneTextField('functionUri', {
                  label: strings.FunctionUriFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
