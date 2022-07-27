import * as React from 'react';
import { Log, FormDisplayMode } from '@microsoft/sp-core-library';
import { FormCustomizerContext } from '@microsoft/sp-listview-extensibility';
import { IItem } from '@pnp/sp/items';
import styles from './Demo.module.scss';

import { DynamicForm } from "@pnp/spfx-controls-react/lib/DynamicForm";

export interface IDemoProps {
  context: FormCustomizerContext;
  displayMode: FormDisplayMode;
  onSave: (listItemData: any, listItem?: IItem) => void;
  onClose: () => void;
}

const LOG_SOURCE: string = 'Demo';

export default class Demo extends React.Component<IDemoProps, {}> {
  public componentDidMount(): void {
    Log.info(LOG_SOURCE, 'React Element: Demo mounted');
  }

  public componentWillUnmount(): void {
    Log.info(LOG_SOURCE, 'React Element: Demo unmounted');
  }

  public render(): React.ReactElement<{}> {
    return <div className={styles.demo}>
      <DynamicForm 
        context={this.props.context as any} 
        listId={this.props.context.list.guid.toString()}  
        listItemId={this.props.context.itemId}
        onCancelled={this.props.onClose}
        onBeforeSubmit={async (listItem) => { return false; }}
        onSubmitError={(listItem, error) => { alert(error.message); }}
        onSubmitted={this.props.onSave} />
    </div>;
  }
}
