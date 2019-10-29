// infrastructural types for dynamic data
import { DynamicProperty } from '@microsoft/sp-component-base';

// custom data contract for dynamic data
import { ICustomer } from '../../../dataContracts';

export interface IOrdersProps {
  needsConfiguration: boolean;
  customer: DynamicProperty<ICustomer>;
  onConfigure: () => void;
}
