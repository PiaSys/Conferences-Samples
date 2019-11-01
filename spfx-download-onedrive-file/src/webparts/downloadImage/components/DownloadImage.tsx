import * as React from 'react';
import styles from './DownloadImage.module.scss';
import { IDownloadImageProps } from './IDownloadImageProps';
import { IDownloadImageState } from './IDownloadImageState';

import { escape } from '@microsoft/sp-lodash-subset';
import { TextField } from 'office-ui-fabric-react/lib/TextField';
import { DefaultButton, PrimaryButton, Stack, IStackTokens } from 'office-ui-fabric-react';

export default class DownloadImage extends React.Component<IDownloadImageProps, IDownloadImageState> {

  constructor(props: IDownloadImageProps) {
    super(props);

    this.state = {
      fileRelativeUrl: null,
      imageUrl: null,
    };
  }

  public render(): React.ReactElement<IDownloadImageProps> {
    return (
      <div className={ styles.downloadImage }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Download Image Web Part</span>
              <div>
                <TextField onChange={ this._setFileRelativeUrl } />
                <PrimaryButton text="Download" onClick={ this._download } />
              </div>
              <div className={ styles.imageContainer }>
                { this.state.imageUrl ? 
                  <img src={ this.state.imageUrl } width="300" />
                  : null
                }
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }

  private _setFileRelativeUrl = (event: any, newValue: string): void => {
    this.setState({
      fileRelativeUrl: newValue
    });
  }

  private _download = (): void => {
    this.props.graphClient
      .api('/me/drive/root:' + this.state.fileRelativeUrl)
      .version('v1.0')
      .get((error, response: any, rawResponse?: any) => {
          if (error) {
              console.error(error.message);
              return;
          }
          this.setState({
            imageUrl: response["@microsoft.graph.downloadUrl"]
          });
      });
  }
}
