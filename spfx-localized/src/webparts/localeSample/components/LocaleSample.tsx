import * as React from 'react';
import styles from './LocaleSample.module.scss';
import { ILocaleSampleProps } from './ILocaleSampleProps';
import { escape } from '@microsoft/sp-lodash-subset';

import * as strings from 'LocaleSampleWebPartStrings';

export default class LocaleSample extends React.Component<ILocaleSampleProps, {}> {
  public render(): React.ReactElement<ILocaleSampleProps> {
    return (
      <div className={ styles.localeSample }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>{ strings.WebPartTitle }</span>
              <p className={ styles.subTitle }>{ strings.WebPartSubtitle }</p>
              <p className={ styles.description }>{escape(this.props.description)}</p>
              <a href="https://aka.ms/spfx" className={ styles.button }>
                <span className={ styles.label }>{ strings.WebPartButtonText }</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
