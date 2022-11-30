// Defines a single selected item to archive
export interface IFileItem {
    // The SharePoint unique ID (guid) of the item
    itemId: string;
    // The name of the selected file or folder
    name: string;
    // The type of item, can be File or Folder
    type: ItemType;
    // The server relative URL of the item
    serverRelativeUrl: string; 
}

// Defines the available item types
export enum ItemType {
    // File item
    File,
    // Folder item
    Folder
}