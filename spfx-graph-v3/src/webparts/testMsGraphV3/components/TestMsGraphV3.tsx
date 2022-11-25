import * as React from 'react';
import styles from './TestMsGraphV3.module.scss';
import { ITestMsGraphV3Props } from './ITestMsGraphV3Props';
import { ITestMsGraphV3State } from './ITestMsGraphV3State';
import { escape } from '@microsoft/sp-lodash-subset';
import { DefaultButton } from '@fluentui/react';
import { FileUpload, OneDriveLargeFileUploadOptions, OneDriveLargeFileUploadTask, UploadResult } from "@microsoft/microsoft-graph-client";

export default class TestMsGraphV3 extends React.Component<ITestMsGraphV3Props, ITestMsGraphV3State> {

  constructor(props: ITestMsGraphV3Props) {
    super(props);
    
    this.state = {
      files: null
    };
  }

  public render(): React.ReactElement<ITestMsGraphV3Props> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    return (
      <section className={`${styles.testMsGraphV3} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Well done, {escape(userDisplayName)}!</h2>
          <div>{environmentMessage}</div>
          <div>Web part property value: <strong>{escape(description)}</strong></div>
        </div>
        <div>
          <div><input type="file" id="fileToUpload" onChange={this._fileToUploadChanged} /></div>
          <div><DefaultButton text="Upload large file" onClick={this._uploadLargeFile} /></div>
        </div>
      </section>
    );
  }

  private _fileToUploadChanged = (event: React.ChangeEvent<HTMLInputElement>): void => {

    this.setState({
      files: event.target.files
    });
  }

  private _uploadLargeFile = async (): Promise<void> => {

    if (!this.props.graphClient) {
      return;
    }

    const file = this.state.files[0];
    const fileObject = new FileUpload(file, file.name, file.size);

    const options: OneDriveLargeFileUploadOptions = {
      // Relative path from root to destination folder
      path: '/Documenti',
      // file is a File object, typically from an <input type="file"/>
      fileName: file.name,
      rangeSize: 1024 * 1024,
      conflictBehavior: "rename",
      uploadEventHandlers: {
        // Called as each "slice" of the file is uploaded
        progress: (range, e) => {
          console.log(`Uploaded ${range?.minValue} to ${range?.maxValue}`);
        }
      }
    };

    // Create a OneDrive upload task
    const uploadTask = await OneDriveLargeFileUploadTask
      .createTaskWithFileObject(this.props.graphClient.client, fileObject, options);

    // Do the upload
    const uploadResult: UploadResult = await uploadTask.upload();

    // The response body will be of the corresponding type of the
    // item being uploaded. For OneDrive, this is a DriveItem
    const driveItem: any = uploadResult.responseBody;
    console.log(`Uploaded file with ID: ${driveItem.id}`);

    return;
  }
}
