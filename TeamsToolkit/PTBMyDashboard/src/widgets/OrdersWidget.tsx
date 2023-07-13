import "../styles/OrdersWidget.css";

import { Button, Text } from "@fluentui/react-components";
import { BaseWidget } from "@microsoft/teamsfx-react";
import { OrderModel } from "../models/orderModel";
import { getOrders } from "../services/ordersService";

import {
  AppsList24Regular,
  MoreHorizontal32Regular,
} from "@fluentui/react-icons";

interface OrdersWidgetState {
  orders?: OrderModel[];
}

export default class OrdersWidget extends BaseWidget<{}, OrdersWidgetState> {
  override async getData(): Promise<OrdersWidgetState> {
    return { orders: getOrders() };
  }

  override header(): JSX.Element | undefined {
    return (
      <div>
        <AppsList24Regular />
        <Text>My Orders</Text>
        <Button icon={<MoreHorizontal32Regular />} appearance="transparent" />
      </div>
    );
  }

  body(): JSX.Element | undefined {
    return (
      <div className="orders-body">
        {this.state.orders?.map((o: OrderModel) => {
          return (
            <div key={`${o.id}-div`}>
              <div className="divider" />
              <Text className="orderId">{o.id}</Text>
              <Text className="description">Description: {o.description}</Text>
              <Text className="customer">Customer: {o.customer}</Text>
              <Text className="price">Price: {o.price.toLocaleString('en-US', { style: 'currency', currency: 'USD'})}</Text>
            </div>
          );
        })}
      </div>
    );
  }

  footer(): JSX.Element | undefined {
    return undefined;
  }
}