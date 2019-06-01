import { MSGraphClient, AadHttpClient, AadTokenProvider, HttpClient } from "@microsoft/sp-http";
import { DisplayMode } from "@microsoft/sp-core-library";

export interface IPlayWithOAuthTokensProps {
  displayMode: DisplayMode;
  title: string;
  updateProperty: (value: string) => void;
  functionUri: string;
  graphClient: MSGraphClient;
  aadHttpClient: AadHttpClient;
  aadTokenProvider: AadTokenProvider;
  httpClient: HttpClient;
}
