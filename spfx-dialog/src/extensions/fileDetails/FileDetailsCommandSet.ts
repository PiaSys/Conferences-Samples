import { Log } from '@microsoft/sp-core-library';
import {
  BaseListViewCommandSet,
  Command,
  IListViewCommandSetExecuteEventParameters,
  ListViewStateChangedEventArgs
} from '@microsoft/sp-listview-extensibility';
import { IFileItem, ItemType } from './types';
import FileDetailsDialog from './components/fileDetailsDialog/FileDetailsDialog';

/**
 * If your command set uses the ClientSideComponentProperties JSON input,
 * it will be deserialized into the BaseExtension.properties object.
 * You can define an interface to describe it.
 */
export interface IFileDetailsCommandSetProperties {
}

const LOG_SOURCE: string = 'FileDetailsCommandSet';

export default class FileDetailsCommandSet extends BaseListViewCommandSet<IFileDetailsCommandSetProperties> {

  public onInit(): Promise<void> {
    Log.info(LOG_SOURCE, 'Initialized FileDetailsCommandSet');

    // initial state of the command's visibility
    const fileDetailsCommand: Command = this.tryGetCommand('FILE_DETAILS');
    fileDetailsCommand.visible = false;

    this.context.listView.listViewStateChangedEvent.add(this, this._onListViewStateChanged);

    return Promise.resolve();
  }

  public async onExecute(event: IListViewCommandSetExecuteEventParameters): Promise<void> {
    switch (event.itemId) {
      case 'FILE_DETAILS': {
        // Map the selected items to what the dialog is looking for
        const selectedItems: IFileItem[] = event.selectedRows.map(row => {
          const id: string = row.getValueByName("UniqueId");
          const contentTypeId: string = row.getValueByName("ContentTypeId");
          const name: string = row.getValueByName("FileLeafRef");
          const serverRelativeUrl: string = row.getValueByName("FileRef");

          return {
            itemId: id,
            name: name,
            type: (contentTypeId.substring(0, 6) === "0x0120") ? ItemType.Folder : ItemType.File,
            serverRelativeUrl: serverRelativeUrl 
          };
        });

        const fileDetailsDialog: FileDetailsDialog = new FileDetailsDialog();
        fileDetailsDialog.context = this.context; 
        fileDetailsDialog.items = selectedItems;
        fileDetailsDialog.cancel = async (): Promise<void> => { 
          console.log('Cancel');
          return; 
        };
        fileDetailsDialog.doSomething = async (items: IFileItem[], text: string): Promise<void> => { 
          console.log(items);          
          console.log(text);          
        };

        await fileDetailsDialog.show();

        break;
      }
      default:
        throw new Error('Unknown command');
    }
  }

  private _onListViewStateChanged = (args: ListViewStateChangedEventArgs): void => {
    Log.info(LOG_SOURCE, 'List view state changed');

    const fileDetailsCommand: Command = this.tryGetCommand('FILE_DETAILS');
    if (fileDetailsCommand) {
      // This command should be hidden unless exactly one row is selected.
      fileDetailsCommand.visible = this.context.listView.selectedRows?.length >= 1;
    }

    // You should call this.raiseOnChage() to update the command bar
    this.raiseOnChange();
  }
}
