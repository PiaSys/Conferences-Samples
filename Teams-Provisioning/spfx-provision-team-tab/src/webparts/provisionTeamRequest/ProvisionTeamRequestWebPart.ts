import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'ProvisionTeamRequestWebPartStrings';
import ProvisionTeamRequest from './components/ProvisionTeamRequest';
import { IProvisionTeamRequestProps } from './components/IProvisionTeamRequestProps';
import { IProvisionTeamRequestWebPartProps } from './IProvisionTeamRequestWebPartProps';

import { PropertyFieldListPicker, PropertyFieldListPickerOrderBy } from '@pnp/spfx-property-controls/lib/PropertyFieldListPicker';
import { CalloutTriggers } from '@pnp/spfx-property-controls/lib/PropertyFieldHeader';
import { PropertyFieldTextWithCallout } from '@pnp/spfx-property-controls/lib/PropertyFieldTextWithCallout';

export default class ProvisionTeamRequestWebPart extends BaseClientSideWebPart<IProvisionTeamRequestWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IProvisionTeamRequestProps> = React.createElement(
      ProvisionTeamRequest,
      {
        templatesSiteUrl: this.properties.templatesSiteUrl,
        templatesLibrary: this.properties.templatesLibrary,
        requestsSiteUrl: this.properties.requestsSiteUrl,
        requestsList: this.properties.requestsList,
        context: this.context
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
                PropertyFieldTextWithCallout('templatesSiteUrl', {
                  calloutTrigger: CalloutTriggers.Hover,
                  key: 'templatesSiteUrlField',
                  label: strings.TemplatesSiteUrlLabel,
                  calloutContent: React.createElement('span', {}, strings.TemplatesSiteUrlCallout),
                  calloutWidth: 150,
                  value: this.properties.templatesSiteUrl
                }),
                PropertyFieldListPicker('templatesLibrary', {
                  label: strings.TemplatesLibraryLabel,
                  selectedList: this.properties.templatesLibrary,
                  includeHidden: false,
                  orderBy: PropertyFieldListPickerOrderBy.Title,
                  disabled: false,
                  onPropertyChange: this.onPropertyPaneFieldChanged.bind(this),
                  properties: this.properties,
                  context: this.context,
                  webAbsoluteUrl: this.properties.templatesSiteUrl,
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'templatesLibraryPickerField'
                }),
                PropertyFieldTextWithCallout('requestsSiteUrl', {
                  calloutTrigger: CalloutTriggers.Hover,
                  key: 'requestsSiteUrlField',
                  label: strings.RequestsSiteUrlLabel,
                  calloutContent: React.createElement('span', {}, strings.RequestsSiteUrlCallout),
                  calloutWidth: 150,
                  value: this.properties.requestsSiteUrl
                }),
                PropertyFieldListPicker('requestsList', {
                  label: strings.RequestsListLabel,
                  selectedList: this.properties.requestsList,
                  includeHidden: false,
                  orderBy: PropertyFieldListPickerOrderBy.Title,
                  disabled: false,
                  onPropertyChange: this.onPropertyPaneFieldChanged.bind(this),
                  properties: this.properties,
                  context: this.context,
                  webAbsoluteUrl: this.properties.requestsSiteUrl,
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'requestsListPickerField'
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
