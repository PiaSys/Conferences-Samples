import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
} from '@microsoft/sp-webpart-base';

import * as strings from 'NewsTeamsTabWebPartStrings';
import NewsTeamsTab from './components/NewsTeamsTab';
import { INewsTeamsTabProps } from './components/INewsTeamsTabProps';

import { PropertyFieldListPicker, PropertyFieldListPickerOrderBy } from '@pnp/spfx-property-controls/lib/PropertyFieldListPicker';
import { sp } from "@pnp/sp";

export interface INewsTeamsTabWebPartProps {
  newsList?: string; // Stores the list ID
}

export default class NewsTeamsTabWebPart extends BaseClientSideWebPart<INewsTeamsTabWebPartProps> {

  // this variable holds the context for Microsoft Teams interaction
  private _teamsContext: microsoftTeams.Context;

  protected onInit(): Promise<any> {
    return super.onInit().then(_ => {
      
      if (this.context.microsoftTeams) {
        this.context.microsoftTeams.getContext(context => {
          this._teamsContext = context;
        });
      }

      sp.setup({
        spfxContext: this.context
      });
    });
  }

  public render(): void {

    const element: React.ReactElement<INewsTeamsTabProps > = React.createElement(
      NewsTeamsTab,
      {
        inTeams: (this.context.microsoftTeams != null),
        newsListId: this.properties.newsList,
        web: sp.web,
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
                PropertyFieldListPicker('newsList', {
                  label: 'Select a list',
                  selectedList: this.properties.newsList,
                  multiSelect: false,
                  includeHidden: false,
                  orderBy: PropertyFieldListPickerOrderBy.Title,
                  disabled: false,
                  onPropertyChange: this.onPropertyPaneFieldChanged.bind(this),
                  properties: this.properties,
                  context: this.context,
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'listPickerFieldId'
                })              
              ]
            }
          ]
        }
      ]
    };
  }
}
