import * as React from 'react';
import styles from './TeamsManualManifest.module.scss';
import { ITeamsManualManifestProps } from './ITeamsManualManifestProps';
import { escape } from '@microsoft/sp-lodash-subset';
import * as microsoftTeams from '@microsoft/teams-js';

export default class TeamsManualManifest extends React.Component<ITeamsManualManifestProps, {}> {
  public render(): React.ReactElement<ITeamsManualManifestProps> {
    return (
      <div className={ styles.teamsManualManifest }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              { this.props.teamsContext != null ?
                <span className={ styles.title }>Welcome to Microsoft Teams!</span> :
                <span className={ styles.title }>Welcome to Microsoft SharePoint!</span>
              }
              { this.props.teamsContext != null ?
                <div className="ms-Grid">
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">channelId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.channelId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">channelName</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.channelName}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">channelRelativeUrl</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.channelRelativeUrl}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">chatId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.chatId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">entityId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.entityId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">groupId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.groupId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">hostClientType</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.hostClientType}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">isFullScreen</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.isFullScreen}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">isTeamArchived</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.isTeamArchived}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">locale</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.locale}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">loginHint</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.loginHint}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">sessionId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.sessionId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">subEntityId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.subEntityId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.teamId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamName</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.teamName}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamSiteUrl</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.teamSiteUrl}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamType</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.teamType}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">tenantSKU</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.tenantSKU}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">theme</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.theme}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">tid (tenant ID)</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.tid}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">upn</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.upn}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userLicenseType</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.userLicenseType}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userObjectId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.userObjectId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userPrincipalName</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.userPrincipalName}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userTeamRole</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.userTeamRole}</div>
                  </div>
                </div>
                : null
              }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
