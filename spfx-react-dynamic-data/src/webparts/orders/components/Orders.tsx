import * as React from 'react';
import styles from './Orders.module.scss';
import { IOrdersProps } from './IOrdersProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { Label } from 'office-ui-fabric-react/lib/Label';
import { Placeholder } from "@pnp/spfx-controls-react/lib/Placeholder";
import { ListView, SelectionMode } from "@pnp/spfx-controls-react/lib/ListView";

// custom data contract for dynamic data
import { ICustomer, IOrder } from '../../../dataContracts';

export default class Orders extends React.Component<IOrdersProps, {}> {

  public getOrders(customerId: string): IOrder[] {
    return(customerId  && [{
        orderId: 'O001',
        customerId: customerId,
        productCode: 'P01',
        price: 10,
        quantity: 10,
      },
      {
        orderId: 'O002',
        customerId: customerId,
        productCode: 'P02',
        price: 20,
        quantity: 20,
      },
      {
        orderId: 'O003',
        customerId: customerId,
        productCode: 'P03',
        price: 30,
        quantity: 30,
      },
    ]);
  }

  public render(): React.ReactElement<IOrdersProps> {
    const { needsConfiguration, customer, onConfigure } = this.props;
    const customerData: ICustomer | undefined = customer.tryGetValue();
    
    return (
      <div className={ styles.orders }>
        {needsConfiguration &&
          <Placeholder
            iconName='Edit'
            iconText='Configure your web part'
            description='Please configure the web part.'
            buttonLabel='Configure'
            onConfigure={onConfigure} />}
        {!needsConfiguration &&
          customerData &&
          (!customerData.customerId || !customerData.name || !customerData.email) &&
          <Placeholder
            iconName='Edit'
            iconText='Configure your web part'
            description='The selected data source is not providing customers. Change the data source'
            buttonLabel='Configure'
            onConfigure={onConfigure} />}
        {!needsConfiguration &&
          !customerData &&
          <Placeholder
            iconName='CustomList'
            iconText="Customer's Orders"
            description='Select a customer' />}
        {!needsConfiguration &&
          customerData &&
          <ul>
            <li>Customer ID: {customerData.customerId}</li>
            <li>Customer Name: {customerData.name}</li>
            <li>Customer Email: {customerData.email}</li>
            <li>
              Orders
              <div>
                <ListView
                  items={this.getOrders(customerData.customerId)}
                  viewFields={[
                    {
                      name: 'orderId',
                      displayName: 'ID Order',
                      sorting: true,
                      maxWidth: 50,
                    },
                    {
                      name: 'customerId',
                      displayName: 'ID Customer',
                      sorting: true,
                      maxWidth: 50,
                    },
                    {
                      name: 'productCode',
                      displayName: 'Product',
                      sorting: true,
                      maxWidth: 50,
                    },
                    {
                      name: 'quantity',
                      displayName: 'Quantity',
                      sorting: true,
                      maxWidth: 50,
                    },
                    {
                      name: 'price',
                      displayName: 'Price',
                      sorting: true,
                      maxWidth: 50,
                    },
                  ]}
                  compact={true}
                  selectionMode={SelectionMode.none} />
              </div> 
            </li>
          </ul>}
      </div>
    );
  }
}
