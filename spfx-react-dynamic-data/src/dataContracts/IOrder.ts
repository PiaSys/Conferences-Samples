/**
 * Defines the data contract for a customer's order
 */
export interface IOrder {
    /**
     * ID of the order
     */
    orderId: string;
    /**
     * ID of the customer
     */
    customerId: string;
    /**
     * Code of the product
     */
    productCode: string;
    /**
     * Quantity of items
     */
    quantity: number;
    /**
     * Price of the product
     */
    price: number;
}