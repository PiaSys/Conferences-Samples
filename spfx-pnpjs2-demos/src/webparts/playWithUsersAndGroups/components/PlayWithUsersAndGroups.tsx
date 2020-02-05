import * as React from 'react';
import styles from './PlayWithUsersAndGroups.module.scss';
import { IPlayWithUsersAndGroupsProps } from './IPlayWithUsersAndGroupsProps';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp, ISiteGroupInfo } from "@pnp/sp/presets/all";
import { ISiteUserInfo } from '@pnp/sp/site-users/types';
import { IPlayWithUsersAndGroupsState } from './IPlayWithUsersAndGroupsState';

export default class PlayWithUsersAndGroups extends React.Component<IPlayWithUsersAndGroupsProps, IPlayWithUsersAndGroupsState> {

  constructor(props: IPlayWithUsersAndGroupsProps) {
    super(props);
    
    this.state = {
      Loading: true,
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
    await this.loadCurrentUserInformation();
  }

  private loadCurrentUserInformation = async () => {

    this.setState({
      Loading: true,
    });

    const user: ISiteUserInfo = await sp.web.currentUser.get();
    console.log(user);

    const groups: ISiteGroupInfo[] = await sp.web.currentUser.groups.get();
    console.log(groups);

    const userGroups: Array<String> = new Array<String>(groups.length);
    groups.forEach((g: ISiteGroupInfo) => {
      userGroups.push(g.Title);
    });

    this.setState({
      ...user,
      Groups: userGroups,
      Loading: false,
    });
  }

  public render(): React.ReactElement<IPlayWithUsersAndGroupsProps> {

    console.log(this.state);

    return (
      <div className={ styles.playWithUsersAndGroups }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              { !this.state.Loading ?
                <div className="ms-Grid">
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">Id</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">{ this.state.Id }</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">Email</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">{ this.state.Email }</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">LoginName</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">{ this.state.LoginName }</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">UserPrincipalName</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">{ this.state.UserPrincipalName }</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">Groups</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">
                      <ul>
                        { this.state.Groups.map(g => <li>{g}</li>) }
                      </ul>  
                    </div>
                  </div>
                </div> : <div>Loading ...</div>
              }
            </div>
          </div>
        </div>
      </div>

    );
  }
}
