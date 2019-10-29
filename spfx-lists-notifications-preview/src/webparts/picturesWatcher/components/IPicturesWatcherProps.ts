import { ListSubscriptionFactory } from '@microsoft/sp-list-subscription';

export interface IPicturesWatcherProps {
  picturesLibraryId: string;
  listSubscriptionFactory: ListSubscriptionFactory;
  onConfigure: () => void;
}
