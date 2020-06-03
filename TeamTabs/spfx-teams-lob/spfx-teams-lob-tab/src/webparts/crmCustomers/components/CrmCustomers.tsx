import * as React from 'react';
import styles from './CrmCustomers.module.scss';
import { ICrmCustomersProps } from './ICrmCustomersProps';
import { ICrmCustomersState } from './ICrmCustomersState';
import { escape } from '@microsoft/sp-lodash-subset';
import { DetailsList, DetailsListLayoutMode, SelectionMode, IColumn } from 'office-ui-fabric-react/lib/DetailsList';
import { Spinner } from 'office-ui-fabric-react/lib/Spinner';
import { ICustomer } from './ICustomer';
import { AadHttpClient, HttpClientResponse, IHttpClientOptions } from "@microsoft/sp-http";

export default class CrmCustomers extends React.Component<ICrmCustomersProps, ICrmCustomersState> {

  private columns: IColumn[];

  /**
   *
   */
  constructor(props: ICrmCustomersProps) {
    super(props);

    this.state = {
      loading: true,
      customers: null
    };
      
    this.columns = [
      { key: 'id', name: 'ID', fieldName: 'id', minWidth: 50, maxWidth: 100, isResizable: true },
      { key: 'displayName', name: 'displayName', fieldName: 'displayName', minWidth: 250, maxWidth: 500, isResizable: true },
      { key: 'email', name: 'email', fieldName: 'email', minWidth: 250, maxWidth: 500, isResizable: true },
      { key: 'rating', name: 'rating', fieldName: 'rating', minWidth: 50, maxWidth: 100, isResizable: true },
    ];  
  }

  private async loadCustomers(): Promise<void> {

    // Get the client to invoke the target REST API
    var aadClient = await this.props.context.aadHttpClientFactory.getClient("api://PaoloPia-LOB-Sample");

    // Prepare the REST request
    const requestHeaders: Headers = new Headers();
    requestHeaders.append('Accept', 'application/json');

    const requestOptions: IHttpClientOptions = {
      headers: requestHeaders,
    };


    const httpResponse: HttpClientResponse = await aadClient.get(
      "https://paolopia-lob-sample.azurewebsites.net/api/LobFunction",
      AadHttpClient.configurations.v1,
      requestOptions
    );

    const response: ICustomer[] = await httpResponse.json();

    this.setState({
      loading: false,
      customers: response
    });
  }

  public async componentDidMount(): Promise<void>
  {
    await this.loadCustomers();
  }

  public render(): React.ReactElement<ICrmCustomersProps> {
    return (
      <div className={ styles.crmCustomers }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome to my fake CRM!</span>
              {
                this.state.loading ?
                <Spinner label="I am loading customers ..." /> :
                <DetailsList
                  items={this.state.customers}
                  columns={this.columns}
                  layoutMode={DetailsListLayoutMode.justified}
                  selectionMode={SelectionMode.none}
                />
              }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
