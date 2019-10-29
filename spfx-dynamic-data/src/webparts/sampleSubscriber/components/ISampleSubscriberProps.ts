import { DynamicProperty } from "@microsoft/sp-component-base";

export interface ISampleSubscriberProps {
  dynamicText: DynamicProperty<string>;
  dynamicNumber: DynamicProperty<number>;
  needsConfiguration: boolean;
  onConfigure: () => void;
}
