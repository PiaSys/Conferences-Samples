import * as React from 'react';
import styles from './SampleComponents.module.scss';
import { ISampleComponentsProps } from './ISampleComponentsProps';
import { escape } from '@microsoft/sp-lodash-subset';

export interface ISampleContentProps {
  text?: string;
}

export interface ISampleContentState {
  dateTime: Date;
}

export class SampleContent extends React.Component<ISampleContentProps, ISampleContentState> {

  constructor(props: ISampleContentProps) {
    super(props);
    
    this.state = {
      dateTime: new Date()
    };
  }

  private _interval: number;

  public componentDidMount(): void {
    this._interval = setInterval(() => {
      this.setState({
        dateTime: new Date()
      });      
    }, 1000);
  }

  public componentWillUnmount(): void {
    clearInterval(this._interval);
  }

  public render(): React.ReactElement<ISampleContentProps> {
    return(
      <div>
        <h1>{this.props.text}</h1>
        <h2>{this.state.dateTime.toString()}</h2>
      </div>
    );
  }
}

export default class SampleComponents extends React.Component<ISampleComponentsProps, {}> {
  public render(): React.ReactElement<ISampleComponentsProps> {
    return (
      <div className={ styles.sampleComponents }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <SampleContent text="Some random text!" />
          </div>
        </div>
      </div>
    );
  }
}
