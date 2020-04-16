import * as React from 'react';
import styles from './PlayWithUsers.module.scss';
import { IPlayWithUsersProps } from './IPlayWithUsersProps';
import { IPlayWithUsersState } from './IPlayWithUsersState';
import { escape } from '@microsoft/sp-lodash-subset';

import { sp } from "@pnp/sp";
import "@pnp/sp/webs";
import "@pnp/sp/site-users";
import "@pnp/sp/site-users/web";
import { ISiteUserInfo, IWebEnsureUserResult } from '@pnp/sp/site-users/types';

import { TextField, PrimaryButton, Label } from 'office-ui-fabric-react';

export default class PlayWithUsers extends React.Component<IPlayWithUsersProps, IPlayWithUsersState> {

  /**
   *
   */
  constructor(props: IPlayWithUsersProps) {
    super(props);
    
    this.state = {
      currentUserLoginName: "",
      usersList: []
    }
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private getCurrentUserLoginName = async () => {
    const currentUser : ISiteUserInfo = await sp.web.currentUser.get();

    console.log(currentUser);

    this.setState({
      currentUserLoginName: currentUser.LoginName      
    });
  }

  private listSiteUsers = async () => {
    const siteUsers : ISiteUserInfo[] = await sp.web.siteUsers.get();

    console.log(siteUsers);

    this.setState({
      usersList: siteUsers.map(u => u.LoginName) 
    });
  }

  private ensureUser = async () => {
    const ensuredUser : IWebEnsureUserResult = await sp.web.ensureUser(this.state.userToEnsure);
    
    console.log(ensuredUser);

    this.setState({
      ensuredUserLocalId: ensuredUser.data.Id
    });
  }

  private onUserToEnsureChanged = (event, newValue: string): void => {
    this.setState({
      userToEnsure: newValue
    });
  }

  public render(): React.ReactElement<IPlayWithUsersProps> {
    return (
      <div className={ styles.playWithUsers }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>

              <h1>Current User</h1>
              <p>
                <PrimaryButton text="Get Current User Login Name" onClick={this.getCurrentUserLoginName} />
                <br/>
                <Label>{this.state.currentUserLoginName}</Label>
              </p>

              <h1>Site Users List</h1>
              <p>
                <PrimaryButton text="List Site Users" onClick={this.listSiteUsers} />
                <br/>
                {
                  this.state.usersList != null && this.state.usersList.length > 0 ?
                  <ul>
                    {this.state.usersList.map(u => <li>{u}</li>)}
                  </ul>
                  : null
                }
              </p>

              <h1>Ensure User</h1>
              <p>
                <TextField value={this.state.userToEnsure} onChange={this.onUserToEnsureChanged} />
                <br/>
                <PrimaryButton text="Ensure user" onClick={this.ensureUser} />
                <br/>
                <Label>{this.state.ensuredUserLocalId}</Label>
              </p>

            </div>
          </div>
        </div>
      </div>
    );
  }
}
