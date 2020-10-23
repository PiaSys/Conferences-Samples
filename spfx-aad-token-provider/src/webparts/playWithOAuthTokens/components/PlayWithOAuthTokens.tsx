import * as React from 'react';
import * as strings from 'PlayWithOAuthTokensWebPartStrings';
import styles from './PlayWithOAuthTokens.module.scss';
import { IPlayWithOAuthTokensProps } from './IPlayWithOAuthTokensProps';
import { IPlayWithOAuthTokensState } from './IPlayWithOAuthTokensState';
import { escape } from '@microsoft/sp-lodash-subset';
import { IUser } from './IUser';
import { AadHttpClient, HttpClient, HttpClientResponse, IHttpClientOptions } from "@microsoft/sp-http";
import { IListNorthwindCustomersResponse, IClaim } from './IListNorthwindCustomersResponse';
import { WebPartTitle } from '@pnp/spfx-controls-react/lib/WebPartTitle';
import { Spinner, SpinnerSize } from 'office-ui-fabric-react/lib/components/Spinner';
import { Label } from 'office-ui-fabric-react/lib/Label';
import { DefaultButton, IButtonProps } from 'office-ui-fabric-react/lib/Button';
import { nullRender } from 'office-ui-fabric-react/lib/Utilities';

export default class PlayWithOAuthTokens extends React.Component<IPlayWithOAuthTokensProps, IPlayWithOAuthTokensState> {

  constructor(props: IPlayWithOAuthTokensProps) {
    super(props);

    this.state = {
      result: '',
      loading: false,
      error: undefined,
      customers: null
    };
  }

  /**
   * Makes a MS Graph call
   */
  private _callMSGraph = async (): Promise<void> => {
    if (!this.props.graphClient) {
      return;
    }

    // update state to indicate loading and remove any previously loaded data
    this.setState({
      error: null,
      loading: true,
      result: '',
      customers: null
    });

    const response : IUser = await this.props.graphClient
      .api("me")
      .version("v1.0")
      .select("id,displayName,userPrincipalName")
      .get();

      if (response) {
          this.setState({
            result: `Hi ${response.displayName}, your UPN is ${response.userPrincipalName} and your Unique ID is ${response.id}`,
            loading: false
          });
      }
      else {
        // Something failed calling the MS Graph
        this.setState({
          error: strings.Error,
          loading: false
        });
      }
  }

  private _callAzureFunction = async (): Promise<void> => 
  {
    // update state to indicate loading and remove any previously loaded data
    this.setState({
      error: null,
      loading: true,
      result: '',
      customers: null
    });

    const requestHeaders: Headers = new Headers();
    requestHeaders.append('Accept', 'application/json');

    const requestOptions: IHttpClientOptions = {
      headers: requestHeaders,
    };

    // get the list of customers
    const httpResponse: HttpClientResponse = await this.props.aadHttpClient
      .get(
        this.props.functionUri,
        AadHttpClient.configurations.v1,
        requestOptions
      );

    const response: IListNorthwindCustomersResponse = await httpResponse.json();

    const nameClaims: IClaim[] = response.CurrentPrincipalClaims.filter((i) => {
      return(i.m_type === "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name");
    });

    const username: string = nameClaims.length > 0 ? nameClaims[0].m_value : "";

    this.setState({
      result: `Hello ${username}, there are ${response.Customers.length} customers in the response`,
      loading: false,
      customers: response.Customers.map(c => c.CustomerID)
    });
  }

  private _getAccessToken = async (): Promise<void> => 
  {
    // update state to indicate loading and remove any previously loaded data
    this.setState({
      error: null,
      loading: true,
      result: '',
      customers: null
    });

    // const accessToken = await this.props.aadTokenProvider.getToken("https://graph.microsoft.com");
    const accessToken = await this.props.aadTokenProvider.getToken("https://officedevpnp.onmicrosoft.com/spfx-lob-function");

    this.setState({
      result: `Here is your Access Token: ${accessToken}`,
      loading: false
    });
  }

  private _useAccessToken = async (): Promise<void> => 
  {
    // update state to indicate loading and remove any previously loaded data
    this.setState({
      error: null,
      loading: true,
      result: ''
    });

    const accessToken = await this.props.aadTokenProvider.getToken("https://officedevpnp.onmicrosoft.com/spfx-lob-function");

    // we just use an empty body, this is for the sake of clarity
    const requestBody: string = JSON.stringify({
    });

    // we configure the request headers
    const requestHeaders: Headers = new Headers();
    requestHeaders.append('Content-type', 'application/json');
    requestHeaders.append('Cache-Control', 'no-cache');
    requestHeaders.append('Authorization', `Bearer ${accessToken}`);

    // we prepare the request
    const httpClientOptions: IHttpClientOptions = {
      body: requestBody,
      headers: requestHeaders
    };
    
    // and we send it via HTTP POST
    const responseBody = await this.props.httpClient.post(
      this.props.functionUri,
      HttpClient.configurations.v1,
      httpClientOptions);

    const response: IListNorthwindCustomersResponse = await responseBody.json();
    const nameClaims: IClaim[] = response.CurrentPrincipalClaims.filter((i) => {
      return(i.m_type === "http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name");
    });
    const username: string = nameClaims.length > 0 ? nameClaims[0].m_value : "";

    this.setState({
      result: `Hello ${username}, there are ${response.Customers.length} customers in the response`,
      loading: false,
      customers: response.Customers.map(c => c.CustomerID)
    });
  }

  public render(): React.ReactElement<IPlayWithOAuthTokensProps> {
    return (
      <div className={styles.playWithOAuthTokens}>
        <WebPartTitle displayMode={this.props.displayMode}
          title={this.props.title}
          updateProperty={this.props.updateProperty} className={styles.title} />
        {
          this.state.loading &&
          <Spinner label={strings.Loading} size={SpinnerSize.large} />
        }
        {
          this.state.result ? (
              <div>
                <Label>{this.state.result}</Label>
              </div>
              ) : (
              !this.state.loading && this.state.error ?
                <Label>{this.state.error}</Label> : null
            )
          }
          {
            this.state.customers ? (
              <div>
                {this.state.customers.map(c => <div>{c}</div>)}
              </div>
            ) : null
          }
        <DefaultButton
          text="Call MS Graph"
          onClick={this._callMSGraph}
        />
        <DefaultButton
          text="Call Azure Function"
          onClick={this._callAzureFunction}
        />
        <DefaultButton
          text="Get Access Token"
          onClick={this._getAccessToken}
        />
        <DefaultButton
          text="Use Access Token"
          onClick={this._useAccessToken}
        />
      </div>
    );
  }
}
