import { DynamicProperty } from "@microsoft/sp-component-base";

export interface IContentQueryConsumerProps {
  webUrl: DynamicProperty<string>;
  listId: DynamicProperty<string>;
  itemId: DynamicProperty<number>;
  needsConfiguration: boolean;
  onConfigure: () => void;
}
