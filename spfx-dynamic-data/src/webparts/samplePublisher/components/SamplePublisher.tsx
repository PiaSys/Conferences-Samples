import * as React from 'react';
import styles from './SamplePublisher.module.scss';
import { ISamplePublisherProps } from './ISamplePublisherProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { TextField, MaskedTextField } from 'office-ui-fabric-react/lib/TextField';

export default class SamplePublisher extends React.Component<ISamplePublisherProps, {}> {


  private _onTextChanged = (newValue: string): void => {
    this.props.onTextChanged({ textValue : newValue});
  }

  private _onNumberChanged = (newValue: string): void => {
    this.props.onNumberChanged({ numericValue: +newValue});
  }

  public render(): React.ReactElement<ISamplePublisherProps> {
    return (
      <div className={ styles.samplePublisher }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome to Dynamic Data Publisher!</span>
              <p className={ styles.subTitle }>Provide values for the following fields:</p>
              <p className={ styles.description }>
                <TextField label="Text to publish:" className={ styles.whiteLabel } onChanged={this._onTextChanged} />
              </p>
              <p className={ styles.description }>
                <TextField label="Number to publish:" className={ styles.whiteLabel } onChanged={this._onNumberChanged} />
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
