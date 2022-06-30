import * as React from 'react';
import styles from './PlayWithTeamPicker.module.scss';
import { IPlayWithTeamPickerProps } from './IPlayWithTeamPickerProps';
import { IPlayWithTeamPickerState } from './IPlayWithTeamPickerState';
import { escape } from '@microsoft/sp-lodash-subset';

import { TeamPicker } from "@pnp/spfx-controls-react/lib/TeamPicker";
import { ITag } from 'office-ui-fabric-react';

import { ListView, IViewField, SelectionMode } from "@pnp/spfx-controls-react/lib/ListView";

const _selectedTeamsViewFields: IViewField[] = [
  {
    name: "name",
    displayName: "Name",
    sorting: false,
    minWidth: 50,
    maxWidth: 150
  },
  {
    name: "key",
    displayName: "ID",
    sorting: false,
    minWidth: 50,
    maxWidth: 150
  }
];

export default class PlayWithTeamPicker extends React.Component<IPlayWithTeamPickerProps, IPlayWithTeamPickerState> {

  constructor(props: IPlayWithTeamPickerProps) {
    super(props);

    this.state = {
      selectedTeams: []
    };
  }

  public render(): React.ReactElement<IPlayWithTeamPickerProps> {
    const {
      isDarkTheme,
      hasTeamsContext,
      context
    } = this.props;

    const {
      selectedTeams
    } = this.state;

    return (
      <section className={`${styles.playWithTeamPicker} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
        </div>
        <div>
          <h2>Here is a demo of the TeamPicker PnP Reusable Control</h2>
          <TeamPicker label="Select up to 10 Teams"
                    selectedTeams={selectedTeams}
                    appcontext={context}
                    itemLimit={10}
                    onSelectedTeams={this._onSelectedTeams}/>
          { selectedTeams.length > 0 ?
            <ListView
            items={selectedTeams}
            viewFields={_selectedTeamsViewFields}
            compact={true}
            selectionMode={SelectionMode.none}
            showFilter={false}
            stickyHeader={true} />
            : null
          }
        </div>
      </section>
    );
  }

  private _onSelectedTeams = (tagList: ITag[]) => {
    this.setState({
      selectedTeams: tagList
    });
  }
}
