import * as React from 'react';
import styles from './PlayWithMgt.module.scss';
import type { IPlayWithMgtProps } from './IPlayWithMgtProps';
import type { IPlayWithMgtState } from './IPlayWithMgtState';
import { escape } from '@microsoft/sp-lodash-subset';
import { PeoplePicker } from '@microsoft/mgt-react';

export default class PlayWithMgt extends React.Component<IPlayWithMgtProps, IPlayWithMgtState> {

  /**
   *
   */
  constructor(props: IPlayWithMgtProps) {
    super(props);
    
    this.state = {
      selectedPeople: []
    };
  }

  public render(): React.ReactElement<IPlayWithMgtProps> {
    const {
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const {
      selectedPeople
    } = this.state;

    console.log(selectedPeople);

    return (
      <section className={`${styles.playWithMgt} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
        </div>
        <div>
          <h3>Pick some people via MGT People Picker!</h3>
          <div>
            <PeoplePicker
              showMax={5} 
              userType="user" 
              personCardInteraction="hover"
              selectionMode="multiple"
              selectionChanged={this._peopleChanged}
              />
          </div>
          {/* <div>
            { selectedPeople && selectedPeople.length > 0 && 
              <ul>
                { selectedPeople.map((person: any, index: number) => {<li key={index}>{person}</li>})}
              </ul>
            }
          </div> */}
        </div>
      </section>
    );
  }

  private _peopleChanged = (event: any) => {
    // Get the selected people
    this.setState({
      selectedPeople: event.detail.map((person: any) => person.displayName)
    });
  }
}
