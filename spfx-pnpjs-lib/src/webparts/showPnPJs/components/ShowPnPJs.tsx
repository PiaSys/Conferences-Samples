import * as React from 'react';
import styles from './ShowPnPJs.module.scss';
import { IShowPnPJsProps } from './IShowPnPJsProps';
import { IShowPnPJsState } from './IShowPnPJsState';
import { escape, times } from '@microsoft/sp-lodash-subset';
import { IList } from './IList';

import { sp } from "@pnp/sp";

export default class ShowPnPJs extends React.Component<IShowPnPJsProps, IShowPnPJsState> {

  constructor() {
    super();
    
    this.state = {
      lists: [],
    };
  }

  public async componentDidMount(): Promise<void> {

    sp.setup({
      spfxContext: this.props.context
    });

    const lists: IList[] = await sp.web.lists.select("id,title").usingCaching().get();
    const listsForState: String[] = lists.map(i => `${i.Title} -> ${i.Id}`);

    this.setState({
      lists: listsForState,
    });
  }

  public render(): React.ReactElement<IShowPnPJsProps> {
    return (
      <div className={ styles.showPnPJs }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <ul>
                { this.state.lists.map(i => <li>{ i }</li>) }               
              </ul>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
