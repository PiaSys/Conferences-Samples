import * as React from 'react';
import styles from './MyTeamsPersonalApp.module.scss';
import { IMyTeamsPersonalAppProps } from './IMyTeamsPersonalAppProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class MyTeamsPersonalApp extends React.Component<IMyTeamsPersonalAppProps, {}> {
  public render(): React.ReactElement<IMyTeamsPersonalAppProps> {
    return (
      <div className={ styles.myTeamsPersonalApp }>
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
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.channelId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">channelName</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.channelName}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">channelRelativeUrl</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.channelRelativeUrl}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">chatId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.chatId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">entityId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.entityId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">groupId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.groupId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">hostClientType</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.hostClientType}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">isFullScreen</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.isFullScreen}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">isTeamArchived</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.isTeamArchived}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">locale</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.locale}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">loginHint</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.loginHint}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">sessionId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.sessionId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">sharepoint</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.sharepoint}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">subEntityId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.subEntityId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.teamId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamName</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.teamName}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamSiteUrl</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.teamSiteUrl}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">teamType</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.teamType}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">tenantSKU</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.tenantSKU}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">theme</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.theme}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">tid (tenant ID)</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.tid}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">upn</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.upn}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userLicenseType</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.userLicenseType}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userObjectId</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.userObjectId}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userPrincipalName</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.userPrincipalName}</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">userTeamRole</div>
                    <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{this.props.teamsContext.context.userTeamRole}</div>
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
