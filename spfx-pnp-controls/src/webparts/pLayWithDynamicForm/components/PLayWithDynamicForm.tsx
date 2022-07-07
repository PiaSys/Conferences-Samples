import * as React from 'react';
import styles from './PLayWithDynamicForm.module.scss';
import { IPLayWithDynamicFormProps } from './IPLayWithDynamicFormProps';
import { escape } from '@microsoft/sp-lodash-subset';

// Import the Dynamic Form control
import { DynamicForm } from "@pnp/spfx-controls-react/lib/DynamicForm";
import { IItem } from '@pnp/sp/items';

export default class PLayWithDynamicForm extends React.Component<IPLayWithDynamicFormProps, {}> {
  public render(): React.ReactElement<IPLayWithDynamicFormProps> {
    const {
      isDarkTheme,
      hasTeamsContext,
      context
    } = this.props;

    return (
      <section className={`${styles.pLayWithDynamicForm} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
        </div>
        <div>
          <h2>Here is a demo of the DynamicForm PnP Reusable Control</h2>
          { this.props.targetListId != null && this.props.targetListId.length > 0 && this.props.targetItemId >= 0 ?
            <DynamicForm 
              context={context} 
              listId={this.props.targetListId}  
              listItemId={this.props.targetItemId != null ? this.props.targetItemId : 0}
              disabledFields={[]}
              returnListItemInstanceOnSubmit={true}            
              onCancelled={this._onCancelled}
              onBeforeSubmit={this._onBeforeSubmit}
              onSubmitError={this._onSubmitError}
              onSubmitted={this._onSubmitted}>
            </DynamicForm> 
            : null }
        </div>
      </section>
    );
  }

  private _onCancelled = () => {
    alert('You clicked cancel!');
  }

  private _onBeforeSubmit = async (listItemData: any): Promise<boolean> => {
    console.log(listItemData);
    alert('Before submit!');

    // Do not cancel the submit event
    return false;
  }

  private _onSubmitError = (listItemData: any, error: Error): void => {
    console.log(listItemData);
    alert('Error!');
    console.log(error);
    return;
  }

  private _onSubmitted = (listItemData: any, listItem?: any): void => {
    console.log(listItemData);
    console.log(listItem);
    alert('Submitted!');
    return;
  }
}
