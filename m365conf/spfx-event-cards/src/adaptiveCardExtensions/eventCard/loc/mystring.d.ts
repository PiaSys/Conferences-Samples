declare interface IEventCardAdaptiveCardExtensionStrings {
  PropertyPane: {
    PropertyPaneDescription: string;
    TitleFieldLabel: string;
    GroupIdFieldLabel: string;
  },
  CardView: {
    PrimaryText: string;
    Description: string;
    QuickViewButton: string;
  },
  ListSessionsQuickView: {
    Title: string;
    SubTitle: string;
  },
  ConfirmQuickView: {
    Title: string;
    Description: string;
  },
  ErrorQuickView: {
    Title: string;
  },
}

declare module 'EventCardAdaptiveCardExtensionStrings' {
  const strings: IEventCardAdaptiveCardExtensionStrings;
  export = strings;
}
