import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'ContentQueryConsumerWebPartStrings';
import ContentQueryConsumer from './components/ContentQueryConsumer';
import { IContentQueryConsumerProps } from './components/IContentQueryConsumerProps';

// import interfaces for Dynamic Data
import { DynamicProperty } from '@microsoft/sp-component-base';
import {
  IPropertyPaneConfiguration,
  IWebPartPropertiesMetadata,
  PropertyPaneDynamicFieldSet,
  PropertyPaneDynamicField,
  DynamicDataSharedDepth
} from '@microsoft/sp-webpart-base';
import { PropertyPaneTextField, IPropertyPaneConditionalGroup } from '@microsoft/sp-property-pane';

export interface IContentQueryConsumerWebPartProps {
  webUrl: DynamicProperty<string>;
  listId: DynamicProperty<string>;
  itemId: DynamicProperty<number>;
}

export default class ContentQueryConsumerWebPart extends BaseClientSideWebPart <IContentQueryConsumerWebPartProps> {

  private _onConfigure = (): void => {
    this.context.propertyPane.open();
  }

  public render(): void {

    const needsConfiguration: boolean = 
      !this.properties.webUrl.tryGetSource() ||
      !this.properties.listId.tryGetSource() ||
      !this.properties.itemId.tryGetSource();

      const element: React.ReactElement<IContentQueryConsumerProps> = React.createElement(
      ContentQueryConsumer,
      {
        onConfigure: this._onConfigure,
        needsConfiguration: needsConfiguration,
        webUrl: this.properties.webUrl,
        listId: this.properties.listId,
        itemId: this.properties.itemId,
      }
    );

    ReactDom.render(element, this.domElement);
  }

  protected get propertiesMetadata(): IWebPartPropertiesMetadata {
    return {
      // Specify the web part properties data type to allow the address
      // information to be serialized by the SharePoint Framework.
      'webUrl': {
        dynamicPropertyType: 'string'
      },
      'listId': {
        dynamicPropertyType: 'string'
      },
      'itemId': {
        dynamicPropertyType: 'number'
      },
    };
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
              // Primary group is used to provide the settings
              // in text fields in the web part properties
              primaryGroup: {
                groupName: strings.BasicGroupName,
                groupFields: [
                  PropertyPaneTextField('webUrl', {
                    label: strings.WebUrlFieldLabel
                  }),
                  PropertyPaneTextField('listId', {
                    label: strings.ListIdFieldLabel
                  }),
                  PropertyPaneTextField('itemId', {
                    label: strings.ItemIdFieldLabel
                  }),
                ]
              },
              // Secondary group is used to retrieve the settings
              // from the connected dynamic data source
              secondaryGroup: {
                groupName: strings.BasicGroupName,
                groupFields: [
                  PropertyPaneDynamicFieldSet({
                    label: 'Selected Item Source',
                    fields: [
                      PropertyPaneDynamicField('webUrl', {
                        label: 'Web URL'
                      }),
                      PropertyPaneDynamicField('listId', {
                        label: 'List ID'
                      }),
                      PropertyPaneDynamicField('itemId', {
                        label: 'Item ID'
                      })
                    ],
                    sharedConfiguration: {
                      depth: DynamicDataSharedDepth.Property
                    }
                  })
                ]
              },
              // Show the secondary group only if the web part has been
              // connected to a dynamic data source
              showSecondaryGroup: !!this.properties.webUrl.tryGetSource() &&
              !!this.properties.listId.tryGetSource() &&
              !!this.properties.itemId.tryGetSource()
            } as IPropertyPaneConditionalGroup
          ]
        }
      ]
    };
  }
}
