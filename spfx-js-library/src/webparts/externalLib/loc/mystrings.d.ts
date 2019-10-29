declare interface IExternalLibStrings {
  PropertyPaneDescription: string;
  BasicGroupName: string;
  DescriptionFieldLabel: string;
}

declare module 'externalLibStrings' {
  const strings: IExternalLibStrings;
  export = strings;
}
