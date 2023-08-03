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
          <div className={styles.commandBox}><DefaultButton text="Invoke Microsoft Graph via SPFx - no error handling" onClick={this._invokeGraphSPFx} /></div>
          <div className={styles.commandBox}><DefaultButton text="Invoke Microsoft Graph via SPFx - with error handling" onClick={this._invokeGraphSPFxWithErrorHandling} /></div>
          <div className={styles.commandBox}><DefaultButton text="Invoke Microsoft Graph via PnPjs - no error handling" onClick={this._invokePnPjs} /></div>
          <div className={styles.commandBox}><DefaultButton text="Invoke Microsoft Graph via PnPjs - with error handling" onClick={this._invokePnPjsWithErrorHandling} /></div>
          <div className={styles.commandBox}><DefaultButton text="Show MGT component" onClick={this._showMGTComponent} /></div>
          { showGraphData ?
            <div>
              <div>UPN from Microsoft Graph: <strong>{upn}</strong></div>
              <div>DisplayName from Microsoft Graph: <strong>{displayName}</strong></div>
            </div>
            : null
          }
          { showMGTComponent ? 
            <div><Person personQuery="me" view={ViewType.twolines} /></div>
            : null
          }
          { errorMessage ? <div className={styles.error}>Error: {errorMessage}</div> : null }
        </div>
      </section>
    );
  }

  private _invokeGraphSPFx = async (): Promise<void> => {
    const userData: User = await this.props.demoService.getCurrentUserDataViaSPFx();
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

  private _invokeGraphSPFxWithErrorHandling = async (): Promise<void> => {
    try {
      const userData: User = await this.props.demoService.getCurrentUserDataViaSPFxWithThrottlingHandler();
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
        errorMessage: 'Error while invoking Microsoft Graph via SPFx'
      });
    }
  }    

  private _invokePnPjs = async (): Promise<void> => {
    const userData: User = await this.props.demoService.getCurrentUserDataViaPnPjs();
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

  private _invokePnPjsWithErrorHandling = async (): Promise<void> => {
    try {
      const userData: User = await this.props.demoService.getCurrentUserDataViaPnPjsWithThrottlingHandler();
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

  private _showMGTComponent = (): void => {
    this.setState({
      showMGTComponent: true
    });
  }
}
