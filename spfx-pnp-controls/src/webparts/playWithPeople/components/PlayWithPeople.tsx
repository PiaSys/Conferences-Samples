import * as React from 'react';
import styles from './PlayWithPeople.module.scss';
import { IPlayWithPeopleProps } from './IPlayWithPeopleProps';
import { IPlayWithPeopleState } from './IPlayWithPeopleState';
import { escape } from '@microsoft/sp-lodash-subset';

import { PeoplePicker, PrincipalType } from "@pnp/spfx-controls-react/lib/PeoplePicker";

import { ListView, IViewField, SelectionMode, GroupOrder, IGrouping } from "@pnp/spfx-controls-react/lib/ListView";
import { IPersonaProps } from 'office-ui-fabric-react';

const peopleViewFields: IViewField[] = [
  {
    name: "id",
    displayName: "ID",
    sorting: true,
    minWidth: 50,
  },
  {
    name: "loginName",
    displayName: "Login Name",
    sorting: true,
    minWidth: 250,
  },
  {
    name: "text",
    displayName: "Display Name",
    sorting: true,
    minWidth: 150,
  },
  {
    name: "secondaryText",
    displayName: "UPN",
    sorting: true,
    minWidth: 250,
  },
  {
    name: "imageInitials",
    displayName: "Initials",
    sorting: true,
    minWidth: 50,
  },
  {
    name: "imageUrl",
    displayName: "Image Url",
    sorting: true,
    minWidth: 250,
  }
];

export default class PlayWithPeople extends React.Component<IPlayWithPeopleProps, IPlayWithPeopleState> {

  constructor(props: IPlayWithPeopleProps) {
    super(props);
    
    this.state = {
      people: undefined
    };
  }

  public render(): React.ReactElement<IPlayWithPeopleProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName,
      context
    } = this.props;

    const { 
      people
    } = this.state;

    return (
      <section className={`${styles.playWithPeople} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
        </div>
        <div>
          <h3>Here is the PnP People Picker control in action!</h3>
          <div>
            <PeoplePicker
              context={context}
              titleText="People Picker"
              personSelectionLimit={10}
              showtooltip={true}
              required={true}
              onChange={this.onChangePeoplePickerItems}
              showHiddenInUI={false}
              principalTypes={[PrincipalType.User,PrincipalType.SharePointGroup]}
              resolveDelay={1000} 
              ensureUser={true}
              />
          </div>
          { people && people.length > 0 ?
              <div>
                <h3>Here are the selected users or SharePoint Groups:</h3>
                <div>
                  <ListView
                    items={people}
                    viewFields={peopleViewFields}
                    compact={true}
                    selectionMode={SelectionMode.none}
                    showFilter={false}
                    stickyHeader={true} />
                </div>
              </div>
            : null                    
          }
        </div>
      </section>
    );
  }

  private onChangePeoplePickerItems = (items: IPersonaProps[]) => {
    this.setState({
      people: items
    });
  }
}
