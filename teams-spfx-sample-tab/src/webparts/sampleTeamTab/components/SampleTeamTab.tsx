import * as React from 'react';
import styles from './SampleTeamTab.module.scss';
import { ISampleTeamTabProps } from './ISampleTeamTabProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class SampleTeamTab extends React.Component<ISampleTeamTabProps, {}> {
  public render(): React.ReactElement<ISampleTeamTabProps> {

    let title: string = '';

    if (this.props.teamsContext){
      title = `Welcome to the Team "${this.props.teamsContext.teamName}"`;
    }
    else {
      title = 'Welcome to SharePoint Online';
    }

    return (
      <div className={ styles.sampleTeamTab }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>{title}</span>
              <p className={ styles.subTitle }>This is the content of your Web Part.</p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
