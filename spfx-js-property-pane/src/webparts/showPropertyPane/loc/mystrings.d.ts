declare interface IShowPropertyPaneStrings {
  ConfigurationGroupName: string;
  PropertyPaneTitle: string;
  TitleFieldLabel: string;
  PropertyPaneTextContent: string;
  TextContentFieldLabel: string;
  PropertyPaneFlagOption: string;
  FlagOptionFieldLabel: string;
  PropertyPaneChoiceOption: string;
  ChoiceOptionFieldLabel: string;
  PropertyPaneSelectionValues: string;
  SelectionValuesFieldLabel: string;
  PropertyPaneFlagToggle: string;
  FlagToggleFieldLabel: string;
  PropertyPaneNumericValue: string;
  NumericValueFieldLabel: string;
  ButtonValueFieldLabel: string;
}

declare module 'ShowPropertyPaneWebPartStrings' {
  const strings: IShowPropertyPaneStrings;
  export = strings;
}
