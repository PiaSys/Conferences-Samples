import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  IWebPartPropertiesMetadata,
  PropertyPaneDynamicFieldSet,
  PropertyPaneDynamicField,
  DynamicDataSharedDepth
} from '@microsoft/sp-webpart-base';

import * as strings from 'SampleSubscriberWebPartStrings';
import SampleSubscriber from './components/SampleSubscriber';
import { ISampleSubscriberProps } from './components/ISampleSubscriberProps';

// import interfaces for Dynamic Data
import { DynamicProperty } from '@microsoft/sp-component-base';

export interface ISampleSubscriberWebPartProps {
  dynamicText: DynamicProperty<string>;
  dynamicNumber: DynamicProperty<number>;
}

export default class SampleSubscriberWebPart extends BaseClientSideWebPart<ISampleSubscriberWebPartProps> {

  private _onConfigure = (): void => {
    this.context.propertyPane.open();
  }

  public render(): void {

    const needsConfiguration: boolean = 
      !this.properties.dynamicText.tryGetSource() ||
      !this.properties.dynamicNumber.tryGetSource();

    const element: React.ReactElement<ISampleSubscriberProps > = React.createElement(
      SampleSubscriber,
      {
        needsConfiguration: needsConfiguration,
        onConfigure: this._onConfigure,
        dynamicText: this.properties.dynamicText,
        dynamicNumber: this.properties.dynamicNumber,
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

  protected get propertiesMetadata(): IWebPartPropertiesMetadata {
    return {
      // Specify the web part properties data type to allow the address
      // information to be serialized by the SharePoint Framework.
      'dynamicText': {
        dynamicPropertyType: 'string'
      },
      'dynamicNumber': {
        dynamicPropertyType: 'number'
      }
    };
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return {
      pages: [
        {
          groups: [
            {
              groupFields: [
                PropertyPaneDynamicFieldSet({
                  label: 'Select Dynamic Text Source',
                  fields: [
                    PropertyPaneDynamicField('dynamicText', {
                      label: 'Dynamic Text Source'
                    }),
                    PropertyPaneDynamicField('dynamicNumber', {
                      label: 'Dynamic Number Source'
                    })
                  ],
                  sharedConfiguration: {
                    depth: DynamicDataSharedDepth.None
                  }
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
