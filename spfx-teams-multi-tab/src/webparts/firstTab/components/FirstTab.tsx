import * as React from 'react';
import styles from './FirstTab.module.scss';
import { IFirstTabProps } from './IFirstTabProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class FirstTab extends React.Component<IFirstTabProps, {}> {
  public render(): React.ReactElement<IFirstTabProps> {
    return (
      <div className={ styles.firstTab }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome to Microsoft Teams!</span>
              <p className={ styles.subTitle }>This is a SharePoint Framework Web Part hosted in Teams.</p>
              <p className={ styles.description }>{escape(this.props.description)}</p>
              <a href="https://aka.ms/spfx" className={ styles.button }>
                <span className={ styles.label }>Learn more</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
