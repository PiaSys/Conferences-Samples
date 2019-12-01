import { WebPartContext } from "@microsoft/sp-webpart-base";

export interface IProvisioningRequestProps {
  templatesSiteUrl: string;
  templatesLibrary: string;
  requestsSiteUrl: string;
  requestsList: string;
  context: WebPartContext;
  needsConfiguration: boolean;
  configureHandler: () => void;
  errorHandler: (errorMessage: string) => void;
}
