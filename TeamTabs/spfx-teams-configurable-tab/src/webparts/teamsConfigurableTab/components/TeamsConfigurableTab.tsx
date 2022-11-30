import * as React from 'react';
import styles from './TeamsConfigurableTab.module.scss';
import { ITeamsConfigurableTabProps } from './ITeamsConfigurableTabProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class TeamsConfigurableTab extends React.Component<ITeamsConfigurableTabProps, {}> {
  public render(): React.ReactElement<ITeamsConfigurableTabProps> {
    const {
      people,
      terms,
      datetime,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    return (
      <section className={`${styles.teamsConfigurableTab} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
        </div>
        <div>
          <h4>Here are the configured properties:</h4>
          <ul>
            { datetime ?
              <li>DateTime: { datetime.displayValue }</li>
              : null 
            }
            { people ?
              <li>People: <ul>{ people.map(p => <li key={p.id}>{ p.login }</li>) }</ul></li>
              : null
            }
            { terms ?
              <li>Terms: <ul>{ terms.map(t => <li key={t.key}>{ t.name }</li>) }</ul></li>
              : null
            }
          </ul>
        </div>
      </section>
    );
  }
}
