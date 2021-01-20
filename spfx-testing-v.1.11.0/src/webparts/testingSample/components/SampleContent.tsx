import * as React from 'react';
import styles from './TestingSample.module.scss';
import { PrimaryButton } from 'office-ui-fabric-react/lib/Button';

export interface ISampleContentProps {
  title: string;
  subTitle?: string;
}

export interface ISampleContentState {
  counter: number;
}

export default class SampleContent extends React.Component<ISampleContentProps, ISampleContentState> {

  constructor(props: ISampleContentProps) {
    super(props);
    
    this.state = {
      counter: 0,
    };
  }
  
  public componentDidMount(): void {
  }

  public render(): React.ReactElement<ISampleContentProps> {
    return(
      <div className={styles.sampleContent}>
        <div className={styles.sampleContentTitle}>{this.props.title}</div>
        { this.props.subTitle ? <div className={styles.sampleContentSubTitle}>{this.props.subTitle}</div> : null }
        <div className={styles.sampleContentCounter}>{this.state.counter}</div>
        <PrimaryButton onClick={this.buttonClick} text="Click me to increment the counter!" />
      </div>
    );
  }

  public buttonClick = () => {
    const newCounter: number = this.state.counter + 1;
    this.setState({
      counter: newCounter
    });
  }
}
