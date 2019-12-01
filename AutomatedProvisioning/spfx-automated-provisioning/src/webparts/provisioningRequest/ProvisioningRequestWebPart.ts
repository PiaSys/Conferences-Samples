import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';
import { DisplayMode } from '@microsoft/sp-core-library';

import * as strings from 'ProvisioningRequestWebPartStrings';
import ProvisioningRequest from './components/ProvisioningRequest';
import { IProvisioningRequestProps } from './components/IProvisioningRequestProps';
import { IProvisioningRequestWebPartProps } from './IProvisioningRequestWebPartProps';

import { PropertyFieldListPicker, PropertyFieldListPickerOrderBy } from '@pnp/spfx-property-controls/lib/PropertyFieldListPicker';
import { CalloutTriggers } from '@pnp/spfx-property-controls/lib/PropertyFieldHeader';
import { PropertyFieldTextWithCallout } from '@pnp/spfx-property-controls/lib/PropertyFieldTextWithCallout';

export default class ProvisioningRequestWebPart extends BaseClientSideWebPart<IProvisioningRequestWebPartProps> {

  // method to determine if the web part has to be configured
  private needsConfiguration(): boolean {
    // as long as we don't have the configuration settings
    return (!this.properties.templatesSiteUrl && !this.properties.templatesLibrary &&
      !this.properties.requestsSiteUrl && !this.properties.requestsList);
  }

  public render(): void {
    const element: React.ReactElement<IProvisioningRequestProps > = React.createElement(
      ProvisioningRequest,
      {
        templatesSiteUrl: this.properties.templatesSiteUrl,
        templatesLibrary: this.properties.templatesLibrary,
        requestsSiteUrl: this.properties.requestsSiteUrl,
        requestsList: this.properties.requestsList,
        context: this.context,
        needsConfiguration: this.needsConfiguration(),
        configureHandler: () => {
          this.context.propertyPane.open();
        },
        errorHandler: (errorMessage: string) => {
          if (this.displayMode === DisplayMode.Edit) {
            this.context.statusRenderer.renderError(this.domElement, errorMessage);
          } else {
            // nothing to do, if we are not in edit Mode
          }
        }
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
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'templatesLibraryPickerField',
                  webAbsoluteUrl: this.properties.templatesSiteUrl
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
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'requestsListPickerField',
                  webAbsoluteUrl: this.properties.requestsSiteUrl
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
