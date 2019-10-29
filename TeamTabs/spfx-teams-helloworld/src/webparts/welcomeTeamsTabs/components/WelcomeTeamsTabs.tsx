import * as React from 'react';
import styles from './WelcomeTeamsTabs.module.scss';
import { IWelcomeTeamsTabsProps } from './IWelcomeTeamsTabsProps';
import { escape } from '@microsoft/sp-lodash-subset';
import * as microsoftTeams from '@microsoft/teams-js';

export default class WelcomeTeamsTabs extends React.Component<IWelcomeTeamsTabsProps, {}> {

  public render(): React.ReactElement<IWelcomeTeamsTabsProps> {

    return (
      <div className={ styles.welcomeTeamsTabs }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              { this.props.teamsContext != null ?
                <span className={ styles.title }>Welcome to Microsoft Teams!</span> :
                <span className={ styles.title }>Welcome to Microsoft SharePoint!</span>
              }
              <p className={ styles.subTitle }>Customize SharePoint experiences using Web Parts.</p>
              <p className={ styles.description }>{escape(this.props.description)}</p>
              <a href="https://aka.ms/spfx" className={ styles.button }>
                <span className={ styles.label }>Learn more</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
