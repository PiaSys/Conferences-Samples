import * as React from 'react';
import styles from './PlayWithSecurityTrimmedControl.module.scss';
import { IPlayWithSecurityTrimmedControlProps } from './IPlayWithSecurityTrimmedControlProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { SecurityTrimmedControl, PermissionLevel } from "@pnp/spfx-controls-react/lib/SecurityTrimmedControl";
import { SPPermission } from '@microsoft/sp-page-context';

export default class PlayWithSecurityTrimmedControl extends React.Component<IPlayWithSecurityTrimmedControlProps, {}> {
  public render(): React.ReactElement<IPlayWithSecurityTrimmedControlProps> {
    const {
      context,
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const noAdminContent: JSX.Element = <h2>You can't see this content</h2>;

    return (
      <section className={`${styles.playWithSecurityTrimmedControl} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
        </div>
        <div>
          <h3>Welcome to SecurityTrimmedControl!</h3>
          <SecurityTrimmedControl context={context}
                        level={PermissionLevel.currentWeb}
                        permissions={[SPPermission.manageWeb]} noPermissionsControl={noAdminContent}>
            <h2>This content will be rendered for people with Manage Web permission only </h2>
          </SecurityTrimmedControl>
          <SecurityTrimmedControl context={context}
                        level={PermissionLevel.currentWeb}
                        permissions={[SPPermission.viewPages]}>
            <h2>This content will be rendered for people with View Pages permission only </h2>
          </SecurityTrimmedControl>
        </div>
      </section>
    );
  }
}
