import { ICustomer } from './ICustomer';

export interface ICrmCustomersState {
  loading: boolean;
  customers: ICustomer[];
}
