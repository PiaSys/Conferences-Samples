import * as React from 'react';
import styles from './TestingSample.module.scss';
import { ITestingSampleProps } from './ITestingSampleProps';
import SampleContent from './SampleContent';
import { escape } from '@microsoft/sp-lodash-subset';

export default class TestingSample extends React.Component<ITestingSampleProps, {}> {

  public componentDidMount(): void {
  }

  public render(): React.ReactElement<ITestingSampleProps> {
    return (
      <div className={ styles.testingSample }>
        <SampleContent title={this.props.title} subTitle={this.props.subTitle} />
      </div>
    );
  }
}
