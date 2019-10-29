// custom data contract for dynamic data
import { ICustomer } from '../../../dataContracts';

// properties of the Customers react component
export interface ICustomersProps {
  onCustomerSelected: (customer: ICustomer) => void ;
}
