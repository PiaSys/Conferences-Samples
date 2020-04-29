import * as React from 'react';
import styles from './ContentQueryConsumer.module.scss';
import { IContentQueryConsumerProps } from './IContentQueryConsumerProps';
import { escape } from '@microsoft/sp-lodash-subset';

export default class ContentQueryConsumer extends React.Component<IContentQueryConsumerProps, {}> {
  public render(): React.ReactElement<IContentQueryConsumerProps> {

    const webUrl : string | undefined = this.props.webUrl.tryGetValue();
    const listId : string | undefined = this.props.listId.tryGetValue();
    const itemId : number | undefined = this.props.itemId.tryGetValue();

    return (
      <div className={ styles.contentQueryConsumer }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <p>Web URL: {webUrl}</p>
              <p>List ID: {listId}</p>
              <p>Item ID: {itemId}</p>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
