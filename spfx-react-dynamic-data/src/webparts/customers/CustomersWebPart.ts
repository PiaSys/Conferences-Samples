import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'CustomersWebPartStrings';
import Customers from './components/Customers';
import { ICustomersProps } from './components/ICustomersProps';

// infrastructural types for dynamic data
import { IDynamicDataPropertyDefinition, IDynamicDataCallables } from '@microsoft/sp-dynamic-data';

// custom data contract for dynamic data
import { ICustomer } from '../../dataContracts';

export default class CustomersWebPart extends BaseClientSideWebPart<{}> 
  implements IDynamicDataCallables {

  // returns the list of dynamic data properties provided by this dynamic data source
  public getPropertyDefinitions(): ReadonlyArray<IDynamicDataPropertyDefinition> {
    return [
      {
        id: 'customer',
        title: 'Customer'
      },
    ];
  }

  public getPropertyValue(propertyId: string): ICustomer {
    switch (propertyId) {
      case 'customer':
        return this._selectedCustomer;
    }

    throw new Error('Bad property id');
  }

  // reference to the currently selected customer
  private _selectedCustomer: ICustomer;

  // Event handler for selecting a customer in the list
  private _customerSelected = (customer: ICustomer): void => {
    // store the currently selected customer in the private field
    this._selectedCustomer = customer;

    // notify subscribers that the selected customer has changed
    this.context.dynamicDataSourceManager.notifyPropertyChanged('customer');
  }

  protected onInit(): Promise<void> {
    // register this web part as dynamic data source
    this.context.dynamicDataSourceManager.initializeSource(this);

    return Promise.resolve();
  }

  public render(): void {
    const element: React.ReactElement<ICustomersProps > = React.createElement(
      Customers,
      {
        onCustomerSelected: this._customerSelected,
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
      pages: []
    };
  }
}
