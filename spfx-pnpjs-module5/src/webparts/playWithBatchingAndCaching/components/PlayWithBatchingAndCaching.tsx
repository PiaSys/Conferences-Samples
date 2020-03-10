import * as React from 'react';
import styles from './PlayWithBatchingAndCaching.module.scss';
import { IPlayWithBatchingAndCachingProps } from './IPlayWithBatchingAndCachingProps';
import { IPlayWithBatchingAndCachingState } from './IPlayWithBatchingAndCachingState';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp, IListInfo, SPBatch } from "@pnp/sp/presets/all";
import { PrimaryButton } from 'office-ui-fabric-react';
import { ISiteUserInfo } from '@pnp/sp/site-users/types';

export default class PlayWithBatchingAndCaching extends React.Component<IPlayWithBatchingAndCachingProps, IPlayWithBatchingAndCachingState> {

  constructor(props: IPlayWithBatchingAndCachingProps) {
    super(props);
    
    this.state = {
      listsTitles: [],
      siteUsers: [],
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private loadData = () => {

    // Create a batch context
    const batch: SPBatch = sp.createBatch();

    // Local variables to hold the results of batched requests
    let listsTitles: string[] = new Array();
    let siteUsers: string[] = new Array();

    // Request the list of lists within that batch context
    sp.web.lists.inBatch(batch).get().then(lists => {
      lists.forEach((v) => listsTitles.push(v.Title));
    });

    // Request the list of site users within that batch context    
    sp.web.siteUsers.usingCaching().inBatch(batch).get().then(users => {
      users.forEach((u) => siteUsers.push(u.LoginName));
    });

    // Execute the actual batch request
    batch.execute().then(() => {
      this.setState({
        listsTitles: listsTitles,
        siteUsers: siteUsers,
      });
    });
  }

  public render(): React.ReactElement<IPlayWithBatchingAndCachingProps> {
    return (
      <div className={ styles.playWithBatchingAndCaching }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <PrimaryButton text="Play with Batching and Caching" onClick={this.loadData} />&nbsp;
              { this.state.listsTitles.length > 0 ?
              <div>
                <h1>Lists</h1>
                <ul>{ this.state.listsTitles.map(l => <li>{l}</li>) }</ul>
              </div> : null }
              { this.state.siteUsers.length > 0 ?
              <div>
                <h1>Site Users</h1>
                <ul>{ this.state.siteUsers.map(u => <li>{u}</li>) }</ul>
              </div> : null }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
