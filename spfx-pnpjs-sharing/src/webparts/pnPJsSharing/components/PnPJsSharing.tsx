import * as React from 'react';
import styles from './PnPJsSharing.module.scss';
import { IPnPJsSharingProps } from './IPnPJsSharingProps';
import {
  autobind,
  PrimaryButton
} from 'office-ui-fabric-react';

import { sp, SharingResult, SharingRole } from "@pnp/sp";

export default class PnPJsSharing extends React.Component<IPnPJsSharingProps, {}> {

  componentDidMount(): void {
    sp.setup({
      spfxContext: this.props.spfxContext
    });
  }

  public render(): React.ReactElement<IPnPJsSharingProps> {
    return (
      <div className={ styles.pnPJsSharing }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Let's Share Some Resources!</span>
              <p>
                <PrimaryButton
                          text="Share"
                          title="Share"
                          onClick={ this._shareResources }
                        />
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }

  @autobind
  private async _shareResources(): Promise<void> {

    // get the server relative URL
    const serverRelativeUrl: string = await sp.web.rootFolder.serverRelativeUrl.get();

    // share the whole site for read/view
    const siteSharingResult: SharingResult = await sp.web
      .shareObject(`https://piasysdev.sharepoint.com${serverRelativeUrl}`,
      "i:0#.f|membership|paolo.pialorsi@sharepoint-camp.com", SharingRole.View);

    console.log(siteSharingResult);

    // share the Shared Documents library for edit
    const libSharingResult: SharingResult = await sp.web
      .shareObject(`https://piasysdev.sharepoint.com${serverRelativeUrl}Shared%20Documents`,
      "i:0#.f|membership|paolo.pialorsi@sharepoint-camp.com", SharingRole.Edit);

    console.log(libSharingResult);

    return;
  }
}
