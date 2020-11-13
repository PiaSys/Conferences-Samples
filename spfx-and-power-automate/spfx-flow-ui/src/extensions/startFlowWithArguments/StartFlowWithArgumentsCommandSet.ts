import { override } from '@microsoft/decorators';
import { Log } from '@microsoft/sp-core-library';
import {
  BaseListViewCommandSet,
  Command,
  IListViewCommandSetListViewUpdatedParameters,
  IListViewCommandSetExecuteEventParameters
} from '@microsoft/sp-listview-extensibility';
import { Dialog } from '@microsoft/sp-dialog';
import { IStartFlowWithArgumentsCommandSetProperties } from './IStartFlowWithArgumentsCommandSetProperties';
import { StartFlowDialog } from './components/StartFlowDialog/StartFlowDialog';
import { sp } from "@pnp/sp/presets/all";

import * as strings from 'StartFlowWithArgumentsCommandSetStrings';

const LOG_SOURCE: string = 'StartFlowWithArgumentsCommandSet';
const START_FLOW_COMMAND: string = 'START_FLOW';

export default class StartFlowWithArgumentsCommandSet extends BaseListViewCommandSet<IStartFlowWithArgumentsCommandSetProperties> {

  @override
  public onInit(): Promise<void> {
    Log.info(LOG_SOURCE, 'Initialized StartFlowWithArgumentsCommandSet');
    return Promise.resolve();
  }

  @override
  public onListViewUpdated(event: IListViewCommandSetListViewUpdatedParameters): void {
    const targetCommand: Command = this.tryGetCommand(START_FLOW_COMMAND);
    if (targetCommand) {

      // By default don't show the command
      var commandVisible = false;
      
      // If there is one, and only one, selected item
      if (event.selectedRows.length === 1)
      {
        // Get the content type ID of the selected item
        const contentTypeId: string = event.selectedRows[0].getValueByName('ContentTypeId');

        // We target a specific content type only
        commandVisible = (contentTypeId.toUpperCase().substring(0, 
          this.properties.targetContentTypeId.length) == this.properties.targetContentTypeId.toUpperCase());
      } 

      // Return the determined visibility for the command
      targetCommand.visible = commandVisible;
    }
  }

  @override
  public onExecute(event: IListViewCommandSetExecuteEventParameters): void {
    switch (event.itemId) {
      case START_FLOW_COMMAND:
        const dialog: StartFlowDialog = new StartFlowDialog(this.context);

        dialog.show().then(async () => {
          if(dialog.dialogResult) {

            console.log(dialog.dialogResult);
            // console.log(this.context.pageContext.list);
            // console.log(event.selectedRows[0]);

            // var approvers: string[] = dialog.dialogResult.approvers;

            // let listItemId = event.selectedRows[0].getValueByName('ID').toString();

            // let list = sp.web.lists.getByTitle(this.context.pageContext.list.title);

            // // Set the values on the list item
            // await list.items.getById(listItemId).update({
            //   LSCTQualityDocumentStatus: strings.PendingApproval,
            //   LSCTQualityApprovers: approvers,
            //   LSCTQualityApprovalDeadline: dialog.dialogResult.flowDueDate,
            //   LSCTQualityRunApprovalFlow: true
            // });

            // TODO: Make an HTTP Request to start the flow
          }
        });
        break;
      default:
        throw new Error('Unknown command');
    }
  }
}
