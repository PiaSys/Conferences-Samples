declare interface ILocaleSampleWebPartStrings {
  PropertyPaneDescription: string;
  BasicGroupName: string;
  DescriptionFieldLabel: string;
  WebPartTitle: string;
  WebPartSubtitle: string;
  WebPartButtonText: string;
}

declare module 'LocaleSampleWebPartStrings' {
  const strings: ILocaleSampleWebPartStrings;
  export = strings;
}
