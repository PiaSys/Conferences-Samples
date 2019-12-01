declare interface IProvisioningRequestWebPartStrings {
  // Web Part properties
  PropertyPaneDescription: string;
  BasicGroupName: string;
  TemplatesSiteUrlLabel: string;
  TemplatesSiteUrlCallout: string;
  TemplatesLibraryLabel: string;
  RequestsSiteUrlLabel: string;
  RequestsSiteUrlCallout: string;
  RequestsListLabel: string;

  // Placeholder labels and strings
  PlaceholderIconName: string;
  PlaceholderIconText: string;
  PlaceholderDescription: string;
  PlaceholderButtonLabel: string;
  
  // Web Part UI
  WelcomeMessage: string;
  SiteTitleLabel: string;
  SiteTitlePlaceholder: string;
  SiteOwnersLabel: string;
  SiteMembersLabel: string;
  SiteTypeLabel: string;
  SiteTypePlaceholder: string;
  TargetOrganizationLabel: string;
  TargetOrganizationPlaceholder: string;
  SiteTemplateLabel: string;
  SiteTemplatePlaceholder: string;
  SiteProvisionButtonText: string;
  SiteProvisioningOK: string;
  SiteProvisioningKO: string;
}

declare module 'ProvisioningRequestWebPartStrings' {
  const strings: IProvisioningRequestWebPartStrings;
  export = strings;
}
