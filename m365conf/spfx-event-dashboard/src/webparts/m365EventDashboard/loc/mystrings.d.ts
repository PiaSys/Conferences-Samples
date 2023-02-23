declare interface IM365EventDashboardWebPartStrings {
  PropertyPaneDescription: string;
  BasicGroupName: string;
  DescriptionFieldLabel: string;
  AppLocalEnvironmentSharePoint: string;
  AppLocalEnvironmentTeams: string;
  AppLocalEnvironmentOffice: string;
  AppLocalEnvironmentOutlook: string;
  AppSharePointEnvironment: string;
  AppTeamsTabEnvironment: string;
  AppOfficeEnvironment: string;
  AppOutlookEnvironment: string;
  Dashboard: {
    SpeakersWidgetTitle: string;
    SessionsWidgetTitle: string;
    AttendeesWidgetTitle: string;
  },
  Loading: string;
}

declare module 'M365EventDashboardWebPartStrings' {
  const strings: IM365EventDashboardWebPartStrings;
  export = strings;
}
