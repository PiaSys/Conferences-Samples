import * as React from 'react';
import styles from './WorkWithFieldsAndContentTypes.module.scss';
import { IWorkWithFieldsAndContentTypesProps } from './IWorkWithFieldsAndContentTypesProps';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp, IContentTypeInfo, IWebEnsureUserResult } from "@pnp/sp/presets/all";
import { IItemAddResult } from "@pnp/sp/items";
import { PrimaryButton } from 'office-ui-fabric-react';

export default class WorkWithFieldsAndContentTypes extends React.Component<IWorkWithFieldsAndContentTypesProps, {}> {

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private addTypedItem = async () => {

    // Determine the target content type ID (assuming it does exist)
    const contentTypes: IContentTypeInfo[] = await sp.web.lists.getByTitle(this.props.listTitle).contentTypes.get();
    const targetContentType: IContentTypeInfo = contentTypes.filter(v => v.Name == 'PiaSysCustomer')[0];

    // Determine the ID of the referer user
    const refererUser: IWebEnsureUserResult = await sp.web.ensureUser('paolo@piasysdev.onmicrosoft.com');
    const refererUserId: number = refererUser.data.Id;

    // Add the new Customer item
    const iar: IItemAddResult = await sp.web.lists.getByTitle(this.props.listTitle).items.add({
      ContentTypeId: targetContentType.Id.StringValue, // "0x0100C38167932248BD448713DD49139FCDF5"
      Title: "Sample Customer #02",
      PiaSysRefererId: refererUserId,
      PiaSysAddress: "Microsoft Way, 1 - Redmond, WA 98052"
    });

    console.log(iar);
  }

  public render(): React.ReactElement<IWorkWithFieldsAndContentTypesProps> {
    return (
      <div className={ styles.workWithFieldsAndContentTypes }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome to SharePoint!</span>
              <p className={ styles.subTitle }>Customize SharePoint experiences using Web Parts.</p>
              <PrimaryButton text="Add a Typed item" onClick={this.addTypedItem} />&nbsp;
            </div>
          </div>
        </div>
      </div>
    );
  }
}
