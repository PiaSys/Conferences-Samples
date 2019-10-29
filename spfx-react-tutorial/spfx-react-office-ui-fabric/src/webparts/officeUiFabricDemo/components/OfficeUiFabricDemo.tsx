import * as React from 'react';
import styles from './OfficeUiFabricDemo.module.scss';
import { IOfficeUiFabricDemoProps } from './IOfficeUiFabricDemoProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { DetailsList, DetailsRow, IDetailsRowProps, IDetailsRowCheckProps } from 'office-ui-fabric-react/lib/DetailsList';
import { css } from 'office-ui-fabric-react/lib/Utilities';

let _items: any[];

export interface IListItem {
  id: string;
  title: string;
  value: number;
}

export default class OfficeUiFabricDemo extends React.Component<IOfficeUiFabricDemoProps, {}> {

  constructor(props: IOfficeUiFabricDemoProps) {
    super(props);

    _items = _items || this.createListItems(20);
  }

  public createListItems(count: number): IListItem[] {
    const result: IListItem[] =[
      { 
        id: "ID01",
        title: "Title 01",
        value: 100,
      },
      { 
        id: "ID02",
        title: "Title 02",
        value: 200,
      },
      { 
        id: "ID03",
        title: "Title 03",
        value: 300,
      },
      { 
        id: "ID04",
        title: "Title 04",
        value: 400,
      },
    ];

    return(result);
  }

  public render(): React.ReactElement<IOfficeUiFabricDemoProps> {
    return (
      <div className={ styles.officeUiFabricDemo }>
        <DetailsList items={_items} setKey="set" onRenderRow={this._onRenderRow} />;
      </div>
    );
  }

  private _onRenderRow = (props: IDetailsRowProps): JSX.Element => {
    return <DetailsRow {...props} onRenderCheck={this._onRenderCheck} aria-busy={false} />;
  }

  private _onRenderCheck = (props: IDetailsRowCheckProps): JSX.Element => {
    return (
      <div
        className={css('ms-DetailsRow-check DetailsListExample-customCheck', props.anySelected && 'is-any-selected')}
        role="button"
        aria-pressed={props.isSelected}
        data-selection-toggle={true}
      >
        <input type="checkbox" checked={props.isSelected} />
      </div>
    );
  }
}
