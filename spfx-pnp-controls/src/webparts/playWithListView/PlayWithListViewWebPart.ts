import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import { IReadonlyTheme } from '@microsoft/sp-component-base';

import * as strings from 'PlayWithListViewWebPartStrings';
import PlayWithListView from './components/PlayWithListView';
import { IPlayWithListViewProps, ICustomer, CustomerLevel } from './components/IPlayWithListViewProps';

export interface IPlayWithListViewWebPartProps {
  description: string;
}

// Import MGT components
import { Providers, SharePointProvider } from '@microsoft/mgt-spfx';

export default class PlayWithListViewWebPart extends BaseClientSideWebPart<IPlayWithListViewWebPartProps> {

  private _isDarkTheme: boolean = false;
  private _environmentMessage: string = '';

  protected onInit(): Promise<void> {
    this._environmentMessage = this._getEnvironmentMessage();

    // Initialize the MGT components infrastructure
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }

    return super.onInit();
  }

  public render(): void {

    // Prepare some fake data
    const customers: ICustomer[] = [
      {
        id: 1,
        displayName: 'Customer 01',
        email: 'info@customer01.mail',
        level: CustomerLevel.Regular,
        account: 'paolo@piasysdev.onmicrosoft.com'
      },
      {
        id: 2,
        displayName: 'Customer 02',
        email: 'info@customer02.mail',
        level: CustomerLevel.Top,
        account: 'guido.zambarda@piasysdev.onmicrosoft.com'
      },
      {
        id: 3,
        displayName: 'Customer 03',
        email: 'info@customer03.mail',
        level: CustomerLevel.Favorite,
        account: 'paolo@piasysdev.onmicrosoft.com'
      },
      {
        id: 4,
        displayName: 'Customer 04',
        email: 'info@customer04.mail',
        level: CustomerLevel.Top,
        account: 'paolo@piasysdev.onmicrosoft.com'
      },
      {
        id: 5,
        displayName: 'Customer 05',
        email: 'info@customer05.mail',
        level: CustomerLevel.Regular,
        account: 'guido.zambarda@piasysdev.onmicrosoft.com'
      },
    ];

    const element: React.ReactElement<IPlayWithListViewProps> = React.createElement(
      PlayWithListView,
      {
        isDarkTheme: this._isDarkTheme,
        hasTeamsContext: !!this.context.sdks.microsoftTeams,
        userDisplayName: this.context.pageContext.user.displayName,
        customers: customers
      }
    );

    ReactDom.render(element, this.domElement);
  }

  private _getEnvironmentMessage(): string {
    if (!!this.context.sdks.microsoftTeams) { // running in Teams
      return this.context.isServedFromLocalhost ? strings.AppLocalEnvironmentTeams : strings.AppTeamsTabEnvironment;
    }

    return this.context.isServedFromLocalhost ? strings.AppLocalEnvironmentSharePoint : strings.AppSharePointEnvironment;
  }

  protected onThemeChanged(currentTheme: IReadonlyTheme | undefined): void {
    if (!currentTheme) {
      return;
    }

    this._isDarkTheme = !!currentTheme.isInverted;
    const {
      semanticColors
    } = currentTheme;
    this.domElement.style.setProperty('--bodyText', semanticColors.bodyText);
    this.domElement.style.setProperty('--link', semanticColors.link);
    this.domElement.style.setProperty('--linkHovered', semanticColors.linkHovered);

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
