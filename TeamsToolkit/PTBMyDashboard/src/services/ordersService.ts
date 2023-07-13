import { OrderModel } from "../models/orderModel";

/**
 * Retrive orders
 * @returns data for orders widget
 */
export const getOrders = (): OrderModel[] => [
  {
    id: "Order01",
    description: "Order 01",
    customer: "Customer 01",
    price: 100
  },
  {
    id: "Order02",
    description: "Order 02",
    customer: "Customer 02",
    price: 200
  },
  {
    id: "Order03",
    description: "Order 03",
    customer: "Customer 03",
    price: 300
  },
  {
    id: "Order04",
    description: "Order 04",
    customer: "Customer 04",
    price: 400
  }
]