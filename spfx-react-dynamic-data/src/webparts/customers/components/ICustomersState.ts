// custom data contract for dynamic data
import { ICustomer } from '../../../dataContracts';

// state of the Customers react component
export interface ICustomersState {
    // the list of customers
    customers: ICustomer[];
    // defines whether the web part is loading data
    loading: boolean;
}