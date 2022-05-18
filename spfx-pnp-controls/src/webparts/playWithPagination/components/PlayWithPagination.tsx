import * as React from 'react';
import styles from './PlayWithPagination.module.scss';
import { IPlayWithPaginationProps } from './IPlayWithPaginationProps';
import { IPlayWithPaginationState } from './IPlayWithPaginationState';
import { escape } from '@microsoft/sp-lodash-subset';

// Import PnP React Controls types
import { ListView, IViewField, SelectionMode } from "@pnp/spfx-controls-react/lib/ListView";
import { Pagination } from '@pnp/spfx-controls-react/lib/pagination';

// Import PnPjs related types
import { getSP } from '../pnpjsConfig';
import {spfi, SPFI, SPFx } from "@pnp/sp";
import { LogLevel, PnPLogging } from "@pnp/logging";
import "@pnp/sp/webs";
import "@pnp/sp/lists";
import "@pnp/sp/items";
import { IColumn } from 'office-ui-fabric-react';

// Import SP HTTP  related types
import { SPHttpClient, SPHttpClientResponse } from '@microsoft/sp-http';  

const _documentsViewFields: IViewField[] = [
  {
    name: "ID",
    displayName: "ID",
    sorting: false,
    minWidth: 50,
    maxWidth: 50
  },
  {
    name: "Title",
    displayName: "Title",
    sorting: true,
    render: (item?: any, index?: number, column?: IColumn) => {
      const url: string = item.ServerRedirectedEmbedUri;
      const title: string = item.Title;
      return <div><a href={url}>{title}</a></div>;
    }
  }
];


export default class PlayWithPagination extends React.Component<IPlayWithPaginationProps, IPlayWithPaginationState> {

  private _pageSize: number = 5;
  private _sp: SPFI = null;

  constructor(props: IPlayWithPaginationProps) {
    super(props);

    this._sp = getSP(props.context);

    this.state = {
      currentPage: 1,
      itemsCount: 0,
      documents: []
    };
  }

  public async componentDidMount() {
    await this._loadDocuments(1, this._pageSize);    
  }

  public render(): React.ReactElement<IPlayWithPaginationProps> {
    const {
      isDarkTheme,
      hasTeamsContext,
      userDisplayName
    } = this.props;
    const {
      currentPage,
      itemsCount,
      documents
    } = this.state;

    const pageCount: number = (itemsCount / this._pageSize) - 1;

    return (
      <section className={`${styles.playWithPagination} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
        </div>
        <div>
          <h3>Here is your list of documents with pagination!</h3>
          <div>
            { documents != null && documents.length > 0 ?
              <div>
                <ListView
                  items={documents}
                  viewFields={_documentsViewFields}
                  compact={true}
                  selectionMode={SelectionMode.none}
                  showFilter={false}
                  stickyHeader={true}
                  />
                <Pagination
                  currentPage={currentPage}
                  totalPages={pageCount}                  
                  onChange={this._onChangePage}
                  limiter={5}
                  />
              </div>
              : null}
          </div>
        </div>
      </section>
    );
  }

  private _loadDocuments = async (page: number, pageSize: number): Promise<void> => {

    const skipItems: number = pageSize * (page - 1);
    const takeItems: number = pageSize;

    const items = await this._sp.web.lists.getByTitle(this.props.targetListTitle)
      .items.select("ID", "Title", "ServerRedirectedEmbedUri")
      .skip(skipItems)
      .top(takeItems)
      .getPaged<{ID: number; Title: string; ServerRedirectedEmbedUri: string}[]>();

    const itemsCountResponse: SPHttpClientResponse = await this.props.context.spHttpClient.get(
      `${this.props.context.pageContext.web.absoluteUrl}/_api/web/lists/GetByTitle('${this.props.targetListTitle}')/ItemCount`,
      SPHttpClient.configurations.v1);

    const itemsCount = (await itemsCountResponse.json()).value;

    if (items.results.length > 0) {
      this.setState({
        currentPage: page,
        itemsCount: itemsCount,
        documents: items.results,
      });
    } else {
      this.setState({
        currentPage: 1,
        itemsCount: 0,
        documents: [],
      });
    }
  }

  private _onChangePage = async (page: number): Promise<void> => {
    await this._loadDocuments(page, this._pageSize);
  }
}
