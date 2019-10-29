import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  IWebPartPropertiesMetadata,
  PropertyPaneDynamicFieldSet,
  PropertyPaneDynamicField
} from '@microsoft/sp-webpart-base';

import * as strings from 'OrdersWebPartStrings';
import Orders from './components/Orders';
import { IOrdersProps } from './components/IOrdersProps';

// infrastructural types for dynamic data
import { DynamicProperty } from '@microsoft/sp-component-base';

// custom data contract for dynamic data
import { ICustomer } from '../../dataContracts';

export interface IOrdersWebPartProps {
  customer: DynamicProperty<ICustomer>;
}

export default class OrdersWebPart extends BaseClientSideWebPart<IOrdersWebPartProps> {

  // method to start configuration
  private _onConfigure = (): void => {
    this.context.propertyPane.open();
  }

  public render(): void {
    const needsConfiguration: boolean = !this.properties.customer.tryGetSource();

    const element: React.ReactElement<IOrdersProps > = React.createElement(
      Orders,
      {
        needsConfiguration: needsConfiguration,
        customer: this.properties.customer,
        onConfigure: this._onConfigure,
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
      'customer': {
        dynamicPropertyType: 'object'
      }
    };
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
                PropertyPaneDynamicFieldSet({
                  label: 'Select customer source',
                  fields: [
                    PropertyPaneDynamicField('customer', {
                      label: 'Customer source'
                    })
                  ]
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
