import * as React from 'react';
import styles from './PlayWithPnPJsV3.module.scss';
import { IPlayWithPnPJsV3Props } from './IPlayWithPnPJsV3Props';
import { escape } from '@microsoft/sp-lodash-subset';

import { getSP } from "../pnpjsConfig";
import { SPFI } from "@pnp/sp";
import '@pnp/sp/sites';
import '@pnp/sp/lists';
import '@pnp/sp/site-users';
import "@pnp/sp/webs";
import "@pnp/sp/site-users/web";
import { IItemAddResult } from '@pnp/sp/items';

import { DefaultButton } from '@fluentui/react';

export default class PlayWithPnPJsV3 extends React.Component<IPlayWithPnPJsV3Props, {}> {

  private _sp: SPFI;
  private _lastCreatedItem: number = 0;

  constructor(props: IPlayWithPnPJsV3Props) {
    super(props);

    this._sp = getSP();
  }

  public render(): React.ReactElement<IPlayWithPnPJsV3Props> {
    const {
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    return (
      <section className={`${styles.playWithPnPJsV3} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
        </div>
        <div>
          <h3>Welcome to PnPjs v.3!</h3>
          <div>
            <div><DefaultButton text="Load site information" onClick={this._loadSiteInformation} /></div>
            <div><DefaultButton text="Read current user's info" onClick={this._readCurrentUser} /></div>
            <div><DefaultButton text="Load items from list" onClick={this._loadListItems} /></div>
            <div><DefaultButton text="Create new item" onClick={this._createListItem} /></div>
            <div><DefaultButton text="Update new item" onClick={this._updateListItem} /></div>
          </div>
        </div>
      </section>
    );
  }

  private _loadSiteInformation = async (): Promise<void> => {
    const rootWeb = await this._sp.site.rootWeb();
    alert(`Root Web Title is: ${rootWeb.Title}!`);
  }

  private _readCurrentUser = async (): Promise<void> => {
    const user = await this._sp.web.currentUser();
    alert(`Current user is: ${user.Email}!`);
  }

  private _loadListItems = async (): Promise<void> => {
    const listItems = await this._sp.web.lists.getByTitle('Test List').items();
    console.log(listItems);
    alert(`In 'Test List' there are ${listItems.length} items!`);
  }

  private _createListItem = async (): Promise<void> => {
    const iar: IItemAddResult = await this._sp.web.lists.getByTitle('Test List').items.add({
      Title: 'Created by PnPjs v3'
    });

    console.log(iar);
    this._lastCreatedItem = iar.data.Id;
    alert(`Added item ${this._lastCreatedItem} to 'Test List'!`);
  }

  private _updateListItem = async (): Promise<void> => {
    await this._sp.web.lists.getByTitle('Test List').items.getById(this._lastCreatedItem).update({
      Title: 'Updated by PnPjs v3'
    });

    alert(`Updated item ${this._lastCreatedItem} in 'Test List'!`);
  }
}

