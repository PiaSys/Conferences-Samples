import * as React from 'react';
import styles from './PlayWithPlaceholder.module.scss';
import { IPlayWithPlaceholderProps } from './IPlayWithPlaceholderProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { Placeholder } from "@pnp/spfx-controls-react/lib/Placeholder";

export default class PlayWithPlaceholder extends React.Component<IPlayWithPlaceholderProps, {}> {

  public render(): React.ReactElement<IPlayWithPlaceholderProps> {

    // Check if there is proper configuration
    const isConfigured: boolean = 
      (this.props.textMessage != undefined && 
      this.props.textMessage.length > 0);

    const {
      textMessage,
      isDarkTheme,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const content: JSX.Element = <div className={styles.welcome}>
      <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
      <h2>Well done, {escape(userDisplayName)}!</h2>
      <div>Web part text message: <strong>{escape(textMessage)}</strong></div>
    </div>;

    return <section className={`${styles.playWithPlaceholder} ${hasTeamsContext ? styles.teams : ''}`}>
      { isConfigured ? 
        content :
        <Placeholder 
          iconName='Edit'
          iconText='Configure your web part'
          description='Please configure the web part.'
          buttonLabel='Configure'
          onConfigure={this.props.onConfigure} />
      }
    </section>;
  }
}
