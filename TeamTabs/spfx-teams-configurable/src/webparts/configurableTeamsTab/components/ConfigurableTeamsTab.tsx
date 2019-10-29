import * as React from 'react';
import styles from './ConfigurableTeamsTab.module.scss';
import { IConfigurableTeamsTabProps } from './IConfigurableTeamsTabProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class ConfigurableTeamsTab extends React.Component<IConfigurableTeamsTabProps, {}> {
  public render(): React.ReactElement<IConfigurableTeamsTabProps> {
    return (
      <div className={ styles.configurableTeamsTab }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome!</span>
              <p className={ styles.subTitle }>
                <div className="ms-Grid">
                  { this.props.datetime != null ?
                    <div className="ms-Grid-row">
                      <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">DateTime</div>
                      <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{ this.props.datetime.displayValue }</div>
                    </div>
                    : null 
                  }
                  { this.props.people != null ?
                    <div className="ms-Grid-row">
                      <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">People</div>
                      <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{ this.props.people.map(p => <div>{ p.login }</div>) }</div>
                    </div>
                    : null
                  }
                  {
                    this.props.terms != null ?
                    <div className="ms-Grid-row">
                      <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">Terms</div>
                      <div className="ms-Grid-col ms-sm6 ms-md6 ms-lg6">{ this.props.terms.map(t => <div>{ t.name }</div>) }</div>
                    </div>
                    : null
                  }
                </div>
              </p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
