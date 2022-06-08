import * as React from 'react';
import styles from './PlayWithDragDropFiles.module.scss';
import { IPlayWithDragDropFilesProps } from './IPlayWithDragDropFilesProps';
import { escape } from '@microsoft/sp-lodash-subset';

// Import the DragDropFiles control
import { DragDropFiles } from "@pnp/spfx-controls-react/lib/DragDropFiles";

// Import PnPjs types
import { getSP } from '../pnpjsConfig';
import {spfi, SPFI, SPFx } from "@pnp/sp";
import "@pnp/sp/webs";
import "@pnp/sp/files";
import "@pnp/sp/folders";

export default class PlayWithDragDropFiles extends React.Component<IPlayWithDragDropFilesProps, {}> {

  private _sp: SPFI = null;

  constructor(props: IPlayWithDragDropFilesProps) {
    super(props);

    this._sp = getSP(props.context);
  }

  public render(): React.ReactElement<IPlayWithDragDropFilesProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    return (
      <section className={`${styles.playWithDragDropFiles} ${hasTeamsContext ? styles.teams : ''}`}>
        <div>
          <h2>Here is a demo of the DragDropFiles PnP Reusable Control</h2>
          <DragDropFiles 
            dropEffect="copy"
            enable={true}  
            onDrop={this._onDropFiles}
            iconName="Upload"
            labelMessage= "Upload Files">
            <div className={styles.dropFilesBox}>This is file drop area</div>
          </DragDropFiles>
        </div>
      </section>
    );
  }

  private _onDropFiles = (files) => {
    console.log(files);
    for (var i = 0; i < files.length; i++) {

      const fileNamePath = encodeURI(files[i].name);
      this._sp.web.getFolderByServerRelativePath("Shared Documents")
        .files.addUsingPath(
          fileNamePath, 
          files[i],
          { Overwrite: true });
    }
  } 
}
