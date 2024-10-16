import * as React from 'react';
import styles from './M365EventDashboard.module.scss';
import { IM365EventDashboardProps } from './IM365EventDashboardProps';
import { IM365EventDashboardState } from './IM365EventDashboardState';
import { IAttendee, ISession, ISpeaker, SpeakerExpertise } from '../../../services/EventsTypes';

import { WidgetSize, Dashboard, IWidget } from '@pnp/spfx-controls-react/lib/Dashboard';
import { ListView, IViewField, SelectionMode } from "@pnp/spfx-controls-react/lib/ListView";
import { mergeStyles, mergeStyleSets, FontIcon } from '@fluentui/react';
import { ChartControl, ChartPalette, ChartType } from '@pnp/spfx-controls-react';
import { Spinner, SpinnerSize } from '@fluentui/react';

import * as strings from 'M365EventDashboardWebPartStrings';
import { DefaultButton } from '@fluentui/react';
import { Person } from '@microsoft/mgt-react/dist/es6/spfx';
import { PersonViewType } from '@microsoft/mgt-spfx';

const iconClass = mergeStyles({
  fontSize: 25,
  height: 25,
  width: 25,
  margin: '0 12px',
});

const iconsStyles = mergeStyleSets({
  noviceGreen: [{ color: 'green' }, iconClass],
  regularBlu: [{ color: 'blue' }, iconClass],
  expertRed: [{ color: 'red' }, iconClass],
  checkedGreen: [{ color: 'green' }, iconClass],
  uncheckedBlack: [{ color: 'black' }, iconClass]
});

export default class M365EventDashboard extends React.Component<IM365EventDashboardProps, IM365EventDashboardState> {
  
  private _speakersViewFields: IViewField[] = [
    {
      name: "id",
      displayName: "ID",
      sorting: false,
      minWidth: 50,
      maxWidth: 50
    },
    {
      name: "title",
      displayName: "Name",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "email",
      displayName: "E-mail",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const emailValue: string = item.email;
        return <a href={`mailto:${emailValue}`}>{emailValue}</a>;
      },
      sorting: true,
      minWidth: 150,
      maxWidth: 150
    },
    {
      name: "expertise",
      displayName: "Expertise",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const expertiseValue: SpeakerExpertise = item.expertise;
        return <div>{ expertiseValue === SpeakerExpertise.Novice ? 
          <FontIcon aria-label="Compass" iconName="Car" className={iconsStyles.noviceGreen} /> :
          expertiseValue === SpeakerExpertise.Regular ? 
          <FontIcon aria-label="Compass" iconName="Airplane" className={iconsStyles.regularBlu} /> :
          <FontIcon aria-label="Compass" iconName="Rocket" className={iconsStyles.expertRed} />
        }</div>;
      },
      sorting: false,
      minWidth: 50,
      maxWidth: 50
    }
  ];

  private _attendeesViewFields: IViewField[] = [
    {
      name: "id",
      displayName: "ID",
      sorting: false,
      minWidth: 50,
      maxWidth: 50
    },
    {
      name: "title",
      displayName: "Name",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "company",
      displayName: "Company",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "email",
      displayName: "E-mail",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const emailValue: string = item.email;
        return <a href={`mailto:${emailValue}`}>{emailValue}</a>;
      },
      sorting: true,
      minWidth: 150,
      maxWidth: 150
    }
  ];

  private _sessionsViewFields: IViewField[] = [
    {
      name: "id",
      displayName: "ID",
      sorting: false,
      minWidth: 50,
      maxWidth: 50
    },
    {
      name: "title",
      displayName: "Name",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "topic",
      displayName: "Topic",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "level",
      displayName: "Level",
      sorting: true,
      minWidth: 100,
      maxWidth: 100
    },
    {
      name: "approved",
      displayName: "Approval",
      render: (item?: any, index?: number, column?: any): JSX.Element => {
        const approvedValue: boolean = item.approved;
        if (this.props.teamId) {
          return <DefaultButton text="Request Eval" onClick={async () => { await this.AssignEvalTask(item); }} />;
        } else {
          <div>{ approvedValue ? 
            <FontIcon aria-label="Compass" iconName="CheckboxComposite" className={iconsStyles.checkedGreen} /> :
            <FontIcon aria-label="Compass" iconName="Checkbox" className={iconsStyles.uncheckedBlack} />
          }</div>
        }
      },
      sorting: true,
      minWidth: 150,
      maxWidth: 150
    }
  ];

  constructor(props: IM365EventDashboardProps) {
    super(props);    

    this.state = {
      loading: false,
      speakers: [],
      sessions: [],
      attendees: []
    }    
  }

  public async componentDidMount(): Promise<void> {
    await this._loadData();
  }

  private _loadData = async (): Promise<void> => {
    
    if (!this.props.eventsService) {
      this.setState({
        error: 'Cannot load data!',
      });
      return;
    }
    
    this.setState({
      loading: true,
      speakers: [],
      sessions: [],
      attendees: []
    });

    const speakers: ISpeaker[] = await this.props.eventsService.ListSpeakers();
    const sessions: ISession[] = await this.props.eventsService.ListSessions();
    const attendees: IAttendee[] = await this.props.eventsService.ListAttendees();

    this.setState({
      loading: false,
      speakers: speakers,
      sessions: sessions,
      attendees: attendees
    });
  }

  public render(): React.ReactElement<IM365EventDashboardProps> {
    const {
      teamId,
      hasTeamsContext
    } = this.props;

    console.log(teamId);

    const {
      loading,
      error,
      speakers,
      sessions,
      attendees
    } = this.state;

    console.log(speakers);
    console.log(sessions);
    console.log(attendees);
    
    return (
      <section className={`${styles.m365EventDashboard} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          { loading && <Spinner size={SpinnerSize.large} title={strings.Loading} className={styles.loader} /> }
          { error && <div className={styles.error}>{error}</div> }
          <div className={styles.personTopBar}><Person personQuery='me' view={PersonViewType.oneline} /></div>
          { !loading && !error && <Dashboard widgets={this.getDashboardWidgets()} /> }
        </div>
      </section>
    );
  }

  /**
   * Get the dashboard widgets
   * @returns An array of the widgets to be added to the dashboard element
   */
  private getDashboardWidgets() : IWidget[] {
    return [{
      title: strings.Dashboard.SpeakersWidgetTitle,
      size: WidgetSize.Double,
      body: [
        {
          id: "speakersListTab",
          title: strings.Dashboard.SpeakersWidgetTitle,
          content: (
            this.getSpeakersListTab()
          )
        }
      ]
    },
    {
      title: strings.Dashboard.SessionsWidgetTitle,
      size: WidgetSize.Double,
      body: [
        {
          id: "sessionsListTab",
          title: strings.Dashboard.SessionsWidgetTitle,
          content: (
            this.getSessionsListTab()
          )
        }
      ]
    },
    {
      title: strings.Dashboard.SessionsWidgetTitle,
      size: WidgetSize.Double,
      body: [
        {
          id: "sessionsChartTab",
          title: strings.Dashboard.SessionsWidgetTitle,
          content: (
            this.getSessionsChartTab()
          )
        }
      ]
    },
    {
      title: strings.Dashboard.AttendeesWidgetTitle,
      size: WidgetSize.Double,
      body: [
        {
          id: "attendeesListTab",
          title: strings.Dashboard.AttendeesWidgetTitle,
          content: (
            this.getAttendeesListTab()
          )
        }
      ]
    }];
  }

  /**
   * Get the content for the Speakers list widget
   * @returns Element representing the Speakers list tab
   */
  private getSpeakersListTab = () => {
    return <ListView
      items={this.state.speakers}
      viewFields={this._speakersViewFields}
      compact={true}
      selectionMode={SelectionMode.single}
      showFilter={false}
      stickyHeader={true} />;
  }

  /**
   * Get the content for the Speakers list widget
   * @returns Element representing the Speakers list tab
   */
  private getSessionsListTab = () => {
      return <ListView
        items={this.state.sessions}
        viewFields={this._sessionsViewFields}
        compact={true}
        selectionMode={SelectionMode.single}
        showFilter={false}
        stickyHeader={true} />;
  }
  
  /**
   * Get the content for the Attendees list widget
   * @returns Element representing the Attendees list tab
   */
  private getAttendeesListTab = () => {
    return <ListView
      items={this.state.attendees}
      viewFields={this._attendeesViewFields}
      compact={true}
      selectionMode={SelectionMode.single}
      showFilter={false}
      stickyHeader={true} />;
  }

  /**
   * Get the content for the Attendees list widget
   * @returns Element representing the Attendees list tab
   */
   private getSessionsChartTab = () => {    
    const options = {
      scales:
      {
        yAxes:
          [
            {
              ticks:
              {
                beginAtZero: true
              }
            }
          ]
      }
    };
    
    return <ChartControl 
      type={ChartType.Bar}
      palette={ChartPalette.OfficeColorful4}
      data={this.getSessionsData()}
      options={options}
      loadingtemplate={() => <Spinner size={SpinnerSize.large} label={strings.Loading} />}
      />;
  }

  private getSessionsData = () => {
    return {
      labels: ['Microsoft SPO', 'Microsoft Teams', 'Microsoft Viva', 'Microsoft Graph'],
      datasets: [
        {
          label: 'Submissions Count',
          data: [
            this.state.sessions.filter(s => s.topic === 'Microsoft SharePoint Online').length,
            this.state.sessions.filter(s => s.topic === 'Microsoft Teams').length,
            this.state.sessions.filter(s => s.topic === 'Microsoft Viva').length,
            this.state.sessions.filter(s => s.topic === 'Microsoft Graph').length
          ]
        }
      ]
    };
  }

  private AssignEvalTask = async (session: ISession) => {
    await this.props.eventsService.AssignSessionEvaluationTask(session, this.props.teamId);
  }
}
