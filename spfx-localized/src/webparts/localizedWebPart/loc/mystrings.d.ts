declare interface ILocalizedWebPartWebPartStrings {
  PropertyPane: {
    PropertyPaneDescription: string;
    BasicGroupName: string;
    DescriptionFieldLabel: string;
  };
  AppLocalEnvironmentSharePoint: string;
  AppLocalEnvironmentTeams: string;
  AppLocalEnvironmentOffice: string;
  AppLocalEnvironmentOutlook: string;
  AppSharePointEnvironment: string;
  AppTeamsTabEnvironment: string;
  AppOfficeEnvironment: string;
  AppOutlookEnvironment: string;
}

declare module 'LocalizedWebPartWebPartStrings' {
  const strings: ILocalizedWebPartWebPartStrings;
  export = strings;
}
