import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import { IReadonlyTheme } from '@microsoft/sp-component-base';

import * as strings from 'UseServiceScopeWebPartStrings';
import UseServiceScope from './components/UseServiceScope';
import { IUseServiceScopeProps } from './components/IUseServiceScopeProps';

import { UserService } from '../../services/UserService';
import { IUserService } from '../../services/IUserService';

export interface IUseServiceScopeWebPartProps {
  upn: string;
}

export default class UseServiceScopeWebPart extends BaseClientSideWebPart<IUseServiceScopeWebPartProps> {

  private _isDarkTheme: boolean = false;
  private _userService: IUserService;

  protected onInit(): Promise<void> {

    // Consume the UserService instance via ServiceScope
    this._userService = this.context.serviceScope.consume<IUserService>(UserService.serviceKey);

    return super.onInit();
  }

  public render(): void {
    const element: React.ReactElement<IUseServiceScopeProps> = React.createElement(
      UseServiceScope,
      {
        hasTeamsContext: !!this.context.sdks.microsoftTeams,
        upn: this.properties.upn,
        userService: this._userService
      }
    );

    ReactDom.render(element, this.domElement);
  }

  protected onThemeChanged(currentTheme: IReadonlyTheme | undefined): void {
    if (!currentTheme) {
      return;
    }

    this._isDarkTheme = !!currentTheme.isInverted;
    const {
      semanticColors
    } = currentTheme;

    if (semanticColors) {
      this.domElement.style.setProperty('--bodyText', semanticColors.bodyText || null);
      this.domElement.style.setProperty('--link', semanticColors.link || null);
      this.domElement.style.setProperty('--linkHovered', semanticColors.linkHovered || null);
    }

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
                PropertyPaneTextField('upn', {
                  label: strings.UpnFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }

  protected get disableReactivePropertyChanges(): boolean {
    return true;
  }
}
