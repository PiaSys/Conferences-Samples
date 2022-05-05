export interface IPlayWithListViewProps {
  isDarkTheme: boolean;
  hasTeamsContext: boolean;
  userDisplayName: string;
  customers: ICustomer[];
}

export interface ICustomer {
  id: number;
  displayName: string;
  email: string;
  level: CustomerLevel; 
  account: string;
}

export const enum CustomerLevel {
  Regular,
  Favorite,
  Top
}
