import * as React from 'react';
import styles from './TeamsGraphConsumer.module.scss';
import { ITeamsGraphConsumerProps } from './ITeamsGraphConsumerProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { ICalendarEvent, IAttendee } from './ICalendarEvent';
import { IUser } from './IUser';

import * as microsoftTeams from '@microsoft/teams-js';
import { DateTimePicker, DateConvention, TimeConvention } from '@pnp/spfx-controls-react/lib/dateTimePicker';
import { ITeamsGraphConsumerState } from './ITeamsGraphConsumerState';
import { TextField } from 'office-ui-fabric-react/lib/TextField';
import { PrimaryButton } from 'office-ui-fabric-react';
import { Spinner, SpinnerSize } from 'office-ui-fabric-react/lib/components/Spinner';

export default class TeamsGraphConsumer extends React.Component<ITeamsGraphConsumerProps, ITeamsGraphConsumerState> {

  /**
   *
   */
  constructor(props: ITeamsGraphConsumerProps) {
    super(props);
    
    this.state = {
      loading: false,
      error: "",
      result: "",
      startDate: new Date(),
      endDate: new Date(),
      subject: ""
    };
  }

  private createMeeting = async (): Promise<void> => {
    if (!this.props.graphClient) {
      return;
    }

    // update state to indicate loading and remove any previously loaded data
    this.setState({
      error: null,
      loading: true,
      result: ''
    });

    // get current user's data
    const userResponse : IUser = await this.props.graphClient
      .api(`users/${this.props.teamsContext.userPrincipalName}`)
      .version("v1.0")
      .select("id,displayName,userPrincipalName")
      .get();

    const newEvent : ICalendarEvent = {
      body: {
        content: `<p>This a new event to talk about <b>${this.state.subject}</b></p>`,
        contentType: 'HTML',
      },
      bodyPreview: `This a new event to talk about ${this.state.subject}`, 
      start: {
        dateTime: this.state.startDate.toUTCString(),
        timeZone: "Etc/GMT"
      },
      end: {
        dateTime: this.state.endDate.toUTCString(),
        timeZone: "Etc/GMT"
      },
      importance: 'high',
      subject: this.state.subject,
      location: {
        displayName: `${this.props.teamsContext.teamName} / ${this.props.teamsContext.channelName}`,
      },
      organizer: {
        emailAddress:
        {
          name: userResponse.displayName,
          address: userResponse.userPrincipalName,
        }
      },
      attendees: [{
        type: "required",
        emailAddress:
        {
          name: userResponse.displayName,
          address: userResponse.userPrincipalName,
        }
      }],
      type: "singleInstance"
    };

    const response : ICalendarEvent = await this.props.graphClient
      .api(`groups/${this.props.teamsContext.groupId}/calendar/events`)
      .version("v1.0")
      .post(newEvent);

    if (response) {
        this.setState({
          result: `Your meeting ${response.subject} is all set!`,
          loading: false
        });
    }
    else {
      // Something failed calling the MS Graph
      this.setState({
        error: "Error while creating the meeting!",
        loading: false
      });
    }
  }

  private _onSubjectChanged = (event: any, newValue: string) : void => {

    // update the component state accordingly to the current user's input
    this.setState({
      subject: newValue,
    });
  }

  public render(): React.ReactElement<ITeamsGraphConsumerProps> {

    console.log(this.state);
    console.log(this.props);

    return (
      <div className={ styles.teamsGraphConsumer }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <div className={ styles.title }>Let's create a Meeting!</div>
              <div className="ms-Grid">
                <div className="ms-Grid-row">
                  <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">Subject</div>
                  <div className={`ms-Grid-col ms-sm6 ms-md6 ms-lg6 ${styles.formField}`}>
                    <TextField 
                      value={ this.state.subject } 
                      onChange={ this._onSubjectChanged } />
                  </div>
                </div>
                <div className="ms-Grid-row">
                  <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">Start Date and Time</div>
                  <div className={`ms-Grid-col ms-sm6 ms-md6 ms-lg6 ${styles.formField}`}>
                  <DateTimePicker
                    dateConvention={DateConvention.DateTime}
                    timeConvention={TimeConvention.Hours24}
                    value={this.state.startDate}
                    onChange={ (date) => { this.setState({ startDate: date }); }} />
                  </div>
                </div>
                <div className="ms-Grid-row">
                  <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">End Date and Time</div>
                  <div className={`ms-Grid-col ms-sm6 ms-md6 ms-lg6 ${styles.formField}`}>
                  <DateTimePicker
                    dateConvention={DateConvention.DateTime}
                    timeConvention={TimeConvention.Hours24}
                    value={this.state.endDate}
                    onChange={ (date) => { this.setState({ endDate: date }); }} />
                  </div>
                </div>
              </div>
              <div>
                <PrimaryButton
                  className={styles.button}
                  data-automation-id="creatMeeting"
                  disabled={false}
                  text="Create Meeting"
                  onClick={this.createMeeting}
                  />
              </div>
              {
                this.state.loading &&
                <Spinner label="Creating your meeting" size={SpinnerSize.large} />
              }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
