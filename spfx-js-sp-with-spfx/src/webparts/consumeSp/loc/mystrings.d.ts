declare interface IConsumeSpStrings {
  PropertyPaneDescription: string;
  BasicGroupName: string;
  DescriptionFieldLabel: string;
}

declare module 'consumeSpStrings' {
  const strings: IConsumeSpStrings;
  export = strings;
}
