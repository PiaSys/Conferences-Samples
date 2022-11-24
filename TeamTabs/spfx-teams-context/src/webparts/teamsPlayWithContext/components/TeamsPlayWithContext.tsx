import * as React from 'react';
import styles from './TeamsPlayWithContext.module.scss';
import { ITeamsPlayWithContextProps } from './ITeamsPlayWithContextProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class TeamsPlayWithContext extends React.Component<ITeamsPlayWithContextProps, {}> {

  public render(): React.ReactElement<ITeamsPlayWithContextProps> {
    const {
      appContext,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    console.log(appContext);

    // https://learn.microsoft.com/en-us/microsoftteams/platform/tabs/how-to/access-teams-context?tabs=teamsjs-v2

    return (
      <section className={`${styles.teamsPlayWithContext} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
        </div>
        <div>
          { appContext ?
            <div>
              <h4>Here are the Teams context properties:</h4>
              <ul>
                  <li>Channel Id: {appContext?.channel?.id}</li>
                  <li>Channel Display Name: {appContext?.channel?.displayName}</li>
                  <li>Channel Relative Url: {appContext?.channel?.relativeUrl}</li>
                  <li>Channel Membership Type: {appContext?.channel?.membershipType}</li>
                  <li>Chat Id: {appContext?.chat?.id}</li>
                  <li>Group Id: {appContext?.team?.groupId}</li>
                  <li>Host Client Type: {appContext?.app.host.clientType}</li>
                  <li>Is Full Screen: {appContext?.page.isFullScreen}</li>
                  <li>Is Team Archived: {appContext?.team?.isArchived}</li>
                  <li>Locale: {appContext?.app.locale}</li>
                  <li>Login Hint: {appContext?.user?.loginHint}</li>
                  <li>Session Id: {appContext?.app.sessionId}</li>
                  <li>Team Internal Id: {appContext?.team?.internalId}</li>
                  <li>Team Template Id: {appContext?.team?.templateId}</li>
                  <li>Team Display Name: {appContext?.team?.displayName}</li>
                  <li>Team Site Url: {appContext?.sharePointSite?.teamSiteUrl}</li>
                  <li>Team Type: {appContext?.team?.type}</li>
                  <li>Theme: {appContext?.app.theme}</li>
                  <li>Tenant ID: {appContext?.user?.tenant.id}</li>
                  <li>Tenant SKU: {appContext?.user?.tenant.teamsSku}</li>
                  <li>User Principal Name: {appContext?.user?.userPrincipalName}</li>
                  <li>User License Type: {appContext?.user?.licenseType}</li>
                  <li>User Object Id: {appContext?.user?.id}</li>
                  <li>Meeting Id: {appContext?.meeting?.id}</li>
                </ul>
            </div>
            : null }
        </div>
      </section>
    );
  }
}
