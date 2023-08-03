import * as React from 'react';
import styles from './HandleThrottling.module.scss';
import { IHandleThrottlingProps } from './IHandleThrottlingProps';
import { IHandleThrottlingState } from './IHandleThrottlingState';
import { escape } from '@microsoft/sp-lodash-subset';

import { Person } from '@microsoft/mgt-react/dist/es6/spfx';
import { ViewType } from '@microsoft/mgt-spfx';
import { User } from '../../../services/User';

import { DefaultButton } from '@fluentui/react/lib/Button';

export default class HandleThrottling extends React.Component<IHandleThrottlingProps, IHandleThrottlingState> {

  /**
   *
   */
  constructor(props: IHandleThrottlingProps) {
    super(props);
    
    this.state = {
      upn: '',
      displayName: '',
      showGraphData: false,
      showMGTComponent: false,
      errorMessage: ''
    };
  }

  public render(): React.ReactElement<IHandleThrottlingProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const { upn, displayName, showGraphData, showMGTComponent, errorMessage } = this.state;

    return (
      <section className={`${styles.handleThrottling} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
          <div>Web part property value: <strong>{escape(description)}</strong></div>
          <div><DefaultButton text="Show MGT component" onClick={this._showMGTComponent} /></div>
          <div><DefaultButton text="Load Microsoft Graph data - no error handling" onClick={this._requestGraphData} /></div>
          <div><DefaultButton text="Load Microsoft Graph data - with error handling" onClick={this._requestGraphDataWithErrorHandling} /></div>
          { showMGTComponent ? 
            <div><Person personQuery="me" view={ViewType.twolines} /></div>
            : null
          }
          { showGraphData ?
            <div>
              <div>UPN from Microsoft Graph: <strong>{upn}</strong></div>
              <div>DisplayName from Microsoft Graph: <strong>{displayName}</strong></div>
            </div>
            : null
          }
          { errorMessage ? <div className={styles.error}>Error: {errorMessage}</div> : null }
        </div>
      </section>
    );
  }

  private _showMGTComponent = (): void => {
    this.setState({
      showMGTComponent: true
    });
  }

  private _requestGraphData = async (): Promise<void> => {
    const userData: User = await this.props.demoService.getCurrentUserData();
    if (userData) {
      this.setState({
        upn: userData.upn,
        displayName: userData.displayName,
        showGraphData: true,
        errorMessage: ''
      });
    } else {
      this.setState({
        showGraphData: false,
        errorMessage: ''
      });
    }
  }

  private _requestGraphDataWithErrorHandling = async (): Promise<void> => {
    try {
      const userData: User = await this.props.demoService.getCurrentUserDataWithThrottlingHandler();
      if (userData) {
        this.setState({
          upn: userData.upn,
          displayName: userData.displayName,
          showGraphData: true,
          errorMessage: ''
        });
      } else {
        this.setState({
          showGraphData: false,
          errorMessage: ''
        });
      }
    } catch (e) {
      this.setState({
        showGraphData: false,
        errorMessage: e.message
      });
    }
  }
}
