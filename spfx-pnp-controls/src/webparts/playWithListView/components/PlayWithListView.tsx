import * as React from 'react';
import styles from './PlayWithListView.module.scss';
import { CustomerLevel, IPlayWithListViewProps } from './IPlayWithListViewProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { ListView, IViewField, SelectionMode } from "@pnp/spfx-controls-react/lib/ListView";

import { IColumn } from 'office-ui-fabric-react/lib/components/DetailsList';
import { mergeStyles, mergeStyleSets, FontIcon } from 'office-ui-fabric-react';
import { Person } from '@microsoft/mgt-react/dist/es6/spfx';
import { ViewType } from '@microsoft/mgt-spfx';

const iconClass = mergeStyles({
  fontSize: 25,
  height: 25,
  width: 25,
  margin: '0 12px',
});

const iconsStyles = mergeStyleSets({
  topGreen: [{ color: 'green' }, iconClass],
  favoriteOrange: [{ color: 'orange' }, iconClass],
  regularBlu: [{ color: 'blue' }, iconClass],
});

export default class PlayWithListView extends React.Component<IPlayWithListViewProps, {}> {

  private _customersViewFields: IViewField[] = [
    {
      name: "id",
      displayName: "ID",
      sorting: false,
      minWidth: 50,
      maxWidth: 50
    },
    {
      name: "displayName",
      displayName: "Name",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "email",
      displayName: "E-mail",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const emailValue: string = item.email;
        return <a href={`mailto:${emailValue}`}>{emailValue}</a>;
      },
      sorting: true,
      minWidth: 150,
      maxWidth: 150
    },
    {
      name: "size",
      displayName: "Size",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const levelValue: CustomerLevel = item.level;
        return <div>{ levelValue == CustomerLevel.Favorite ? 
          <FontIcon aria-label="Compass" iconName="Heart" className={iconsStyles.favoriteOrange} /> :
          levelValue == CustomerLevel.Top ? 
          <FontIcon aria-label="Compass" iconName="Rocket" className={iconsStyles.topGreen} /> :
          <FontIcon aria-label="Compass" iconName="AccountManagement" className={iconsStyles.regularBlu} />
        }</div>;
      },
      sorting: false,
      minWidth: 50,
      maxWidth: 50
    },
    {
      name: "account",
      displayName: "Account",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const accountValue: string = item.account;
        return <Person personQuery={accountValue} view={ViewType.oneline}></Person>;
      },
      sorting: true,
      minWidth: 150,
      maxWidth: 200
    }
  ];

  public render(): React.ReactElement<IPlayWithListViewProps> {
    const {
      isDarkTheme,
      hasTeamsContext,
      userDisplayName,
      customers
    } = this.props;

    return (
      <section className={`${styles.playWithListView} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Welcome, {escape(userDisplayName)}!</h2>
          <div>Here is a demo of the ListView PnP Reusable Control</div>
        </div>
        <div>
          <ListView
            items={customers}
            viewFields={this._customersViewFields}
            compact={true}
            selectionMode={SelectionMode.single}
            showFilter={false}
            stickyHeader={true} />
        </div>
      </section>
    );
  }
}
