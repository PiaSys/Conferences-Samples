import * as React from 'react';
import styles from './UseMgt.module.scss';
import { IUseMgtProps } from './IUseMgtProps';
import { IUseMgtState } from './IUseMgtState';
import { escape } from '@microsoft/sp-lodash-subset';
import { TextField } from 'office-ui-fabric-react/lib/TextField';
import { Person } from '@microsoft/mgt-react/dist/es6/spfx';

export default class UseMgt extends React.Component<IUseMgtProps, IUseMgtState> {

  /**
   *
   */
  constructor(props: IUseMgtProps) {
    super(props);
    
    this.state = {
      person: ''
    };
  }

  private onPersonChange = (event, newValue: string) => {
    this.setState({
      person: newValue
    });
  }

  public render(): React.ReactElement<IUseMgtProps> {
    return (
      <div className={ styles.useMgt }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome to MGT in SPFx!</span>
              <p><TextField onChange={this.onPersonChange} value={this.state.person} /></p>
              <p><Person personQuery={this.state.person} /></p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
