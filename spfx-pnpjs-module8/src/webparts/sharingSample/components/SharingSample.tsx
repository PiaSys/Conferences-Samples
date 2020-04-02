import * as React from 'react';
import styles from './SharingSample.module.scss';
import { ISharingSampleProps } from './ISharingSampleProps';
import { ISharingSampleState } from './ISharingSampleState';
import { escape } from '@microsoft/sp-lodash-subset';

import { IFileInfo } from "@pnp/sp/files";
import { IItem } from "@pnp/sp/items";
import { sp } from "@pnp/sp";
import "@pnp/sp/webs";
import "@pnp/sp/sharing";
import "@pnp/sp/files";
import "@pnp/sp/site-users/web";
import { SharingLinkKind, IShareLinkResponse, SharingRole, ISharingResult, ISharingInformation, ISharingEntityPermission } from "@pnp/sp/sharing";
import { dateAdd } from "@pnp/common";

import { TextField, PrimaryButton, Link } from 'office-ui-fabric-react';

export default class SharingSample extends React.Component<ISharingSampleProps, ISharingSampleState> {

  constructor(props: ISharingSampleProps) {
    super(props);

    this.state = {
      resourceUrl: '',
      sharingLink: ''
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private shareWeb = async () => {

    // Get the target user
    const targetUser = await sp.web.siteUsers.getByEmail("paolo@piasysdev.onmicrosoft.com")();

    // Share the web with the user
    const sharing: ISharingResult = await sp.web.shareWith(targetUser.LoginName);

    // Show the sharing information
    console.log(sharing);
  }

  private shareResource = async () => {

    // Get the info about the target file, selected by the user
    const targetFileInfo: IFileInfo = await sp.web.getFileByServerRelativeUrl(this.state.resourceUrl).get();

    // Show the file info
    console.log("File information:");
    console.log(targetFileInfo);

    // Get the target file, selected by the user
    const targetFileItem: IItem = await sp.web.getFileByServerRelativeUrl(this.state.resourceUrl).getItem();

    // Show the file
    console.log("Target file item:");
    console.log(targetFileItem);

    // Get a sharing link to the file selected by the user
    const sharingLink: IShareLinkResponse = await targetFileItem
      .getShareLink(SharingLinkKind.AnonymousView, dateAdd(new Date(), "day", 5));
      
    // Show the sharing link information
    console.log("ShareLink information:");
    console.log(sharingLink);
    console.log("ShareLink URL:");
    console.log(sharingLink.sharingLinkInfo.Url);

    // Share the file selected by the user with a specific target user
    const sharedResource: ISharingResult = await targetFileItem
      .shareWith("i:0#.f|membership|paolo@piasysdev.onmicrosoft.com", SharingRole.Edit, true);

    // Show the shareWith result
    console.log("ShareWith result:");
    console.log(sharedResource);

    // Get the sharing information for the file selected by the user
    const sharingInformation: ISharingInformation = await targetFileItem
      .getSharingInformation();

    // Show the sharing information
    console.log("Sharing information:");
    console.log(sharingInformation);

    // Get the sharing permission for the folder selected bu the user
    const permissions: ISharingEntityPermission[] = await targetFileItem
      .checkSharingPermissions([{ alias: "i:0#.f|membership|paolo@piasysdev.onmicrosoft.com" }]);

    // Show the sharing permissions
    console.log("Sharing permissions:");
    console.log(permissions);
  }
  
  private onResourceUrlChanged = (event, newValue: string): void => {
    this.setState({
      resourceUrl: newValue
    });
  }

  public render(): React.ReactElement<ISharingSampleProps> {
    return (
      <div className={ styles.sharingSample }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>

              <p><PrimaryButton text="Share the Web" onClick={this.shareWeb} /></p>
              <p><TextField onChange={this.onResourceUrlChanged} value={this.state.resourceUrl} /></p>
              <p><PrimaryButton text="Share" onClick={this.shareResource} /></p>
              {
                ((this.state.sharingLink !== null) && (this.state.sharingLink != '')) ? 
                <p><Link href={this.state.sharingLink}>Sharing link</Link></p>
                : null
              }
            </div>

          </div>
        </div>
      </div>
    );
  }
}
