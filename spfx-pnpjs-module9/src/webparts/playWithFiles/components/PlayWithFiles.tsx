import * as React from 'react';
import styles from './PlayWithFiles.module.scss';
import { IPlayWithFilesProps } from './IPlayWithFilesProps';
import { IPlayWithFilesState } from './IPlayWithFilesState';
import { escape } from '@microsoft/sp-lodash-subset';

import { sp } from "@pnp/sp";
import { CheckinType } from "@pnp/sp/files";
import "@pnp/sp/webs";
import "@pnp/sp/folders";
import "@pnp/sp/files";

import { TextField, PrimaryButton, Link } from 'office-ui-fabric-react';

export default class PlayWithFiles extends React.Component<IPlayWithFilesProps, IPlayWithFilesState> {

  constructor(props: IPlayWithFilesProps) {
    super(props);

    this.state = {
      fileUrl: null,
      fileContent: null
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private uploadFile = async () => {
    const file: File = this.state.file;

    sp.web.getFolderByServerRelativeUrl(this.state.folderUrl).files.add(file.name, file, true);
  }

  private downloadFile = async () => {
    const textContent: string = await sp.web.getFileByServerRelativeUrl(this.state.fileUrl).getText();

    this.setState({
      fileContent: textContent
    });
  }

  private checkOutFile = async () => {
    await sp.web.getFileByServerRelativeUrl(this.state.fileUrl).checkout();
  }

  private checkInFile = async () => {
    await sp.web.getFileByServerRelativeUrl(this.state.fileUrl).checkin('Checked in by SPFx via PnPjs', CheckinType.Major);
  }

  private onFileChanged = (event: React.ChangeEvent<HTMLInputElement>) => {
    this.setState({
      file: event.target.files.item(0)
    });
  }

  private onFolderUrlChanged = (event, newValue: string): void => {
    this.setState({
      folderUrl: newValue
    });
  }

  private onFileUrlChanged = (event, newValue: string): void => {
    this.setState({
      fileUrl: newValue
    });
  }

  public render(): React.ReactElement<IPlayWithFilesProps> {
    return (
      <div className={ styles.playWithFiles }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>

              <h1>File Upload</h1>
              <p>
                File to upload: <input type="file" id="fileToUpload" onChange={this.onFileChanged}></input>
                <br/>
                Target folder: <TextField value={this.state.folderUrl} onChange={this.onFolderUrlChanged} />
                <br/>
                <PrimaryButton text="Upload file" onClick={this.uploadFile} />
              </p>
              <h1>File Manage</h1>
              <p>
                Target file: <TextField value={this.state.fileUrl} onChange={this.onFileUrlChanged} />
              </p>
              <p>
                <PrimaryButton text="Download file" onClick={this.downloadFile} />
                <br/>
                <TextField multiline={true} rows={5} cols={50} value={this.state.fileContent} />
              </p>
              <p><PrimaryButton text="Check-out file" onClick={this.checkOutFile} /></p>
              <p><PrimaryButton text="Check-in file" onClick={this.checkInFile} /></p>

            </div>
          </div>
        </div>
      </div>
    );
  }
}
