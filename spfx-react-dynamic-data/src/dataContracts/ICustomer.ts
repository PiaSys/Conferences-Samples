/**
 * Defines the data contract for a customer
 */
export interface ICustomer {
    /**
     * ID of the customer
     */
    customerId: string;
    /**
     * Name of the customer
     */
    name: string;
    /**
     * Email of the customer
     */
    email: string;
}