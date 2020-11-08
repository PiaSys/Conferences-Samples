declare interface IProvisionTeamRequestWebPartStrings {
  PropertyPaneDescription: string;
  BasicGroupName: string;
  TemplatesSiteUrlLabel: string;
  TemplatesSiteUrlCallout: string;
  TemplatesLibraryLabel: string;
  RequestsSiteUrlLabel: string;
  RequestsSiteUrlCallout: string;
  RequestsListLabel: string;

  WelcomeMessage: string;
  TeamTitleLabel: string;
  TeamTitlePlaceholder: string;
  TeamAliasLabel: string;
  TeamAliasPlaceholder: string;
  TeamOwnersLabel: string;
  TeamMembersLabel: string;
  TeamTemplateLabel: string;
  TeamTemplatePlaceholder: string;
  TeamProvisionButtonText: string;
  TeamProvisioningOK: string;
  TeamProvisioningKO: string;

  TeamAliasNotValid: string;
}

declare module 'ProvisionTeamRequestWebPartStrings' {
  const strings: IProvisionTeamRequestWebPartStrings;
  export = strings;
}
