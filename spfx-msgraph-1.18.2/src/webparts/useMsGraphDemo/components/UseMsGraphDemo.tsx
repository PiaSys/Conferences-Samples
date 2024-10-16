import * as React from 'react';
import styles from './UseMsGraphDemo.module.scss';
import type { IUseMsGraphDemoProps } from './IUseMsGraphDemoProps';
import type { IUseMsGraphDemoState } from './IUseMsGraphDemoState';
import { escape } from '@microsoft/sp-lodash-subset';
import { Label, PrimaryButton } from '@fluentui/react';

export default class UseMsGraphDemo extends React.Component<IUseMsGraphDemoProps, IUseMsGraphDemoState> {

  constructor(props: IUseMsGraphDemoProps) {
    super(props);
    this.state = {
      displayName: '',
      userPrincipalName: ''
    };
  }

  public render(): React.ReactElement<IUseMsGraphDemoProps> {
    const {
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const { displayName, userPrincipalName } = this.state;

    return (
      <section className={`${styles.useMsGraphDemo} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
        </div>
        <div>
          <h3>Have fun with Microsoft Graph!</h3>
          <p>
            Click the button below to get your profile information from Microsoft Graph.
          </p>
          <div>
            <PrimaryButton text="Get my profile" onClick={this._getMyProfile} />
          </div>
          {displayName && userPrincipalName &&
            <div>
              <Label>Display Name:</Label><span>{displayName}</span>
              <Label>User Principal Name:</Label><span>{userPrincipalName}</span>
            </div>
          }
        </div>
      </section>
    );
  }

  private _getMyProfile = async (): Promise<void> => {
    const { graphClient } = this.props;
    const profile = await graphClient.api('/me').get();
    this.setState({
      displayName: profile.displayName,
      userPrincipalName: profile.userPrincipalName
    });
  }
}
