import * as React from 'react';
import * as ReactDOM from 'react-dom';

import { Log } from '@microsoft/sp-core-library';
import {
  BaseFormCustomizer
} from '@microsoft/sp-listview-extensibility';

import AdvancedDynamicForm, { IAdvancedDynamicFormProps } from './components/AdvancedDynamicForm';

const LOG_SOURCE: string = 'AdvancedDynamicFormFormCustomizer';

export default class AdvancedDynamicFormFormCustomizer
  extends BaseFormCustomizer<{}> {

  public onInit(): Promise<void> {
    // Add your custom initialization to this method. The framework will wait
    // for the returned promise to resolve before rendering the form.
    Log.info(LOG_SOURCE, 'Activated AdvancedDynamicFormFormCustomizer with properties:');
    Log.info(LOG_SOURCE, JSON.stringify(this.properties, undefined, 2));
  
    return Promise.resolve();
  }

  public render(): void {
    // Use this method to perform your custom rendering.

    const advancedDynamicForm: React.ReactElement<{}> =
      React.createElement(AdvancedDynamicForm, {
        context: this.context,
        displayMode: this.displayMode,
        onSave: this._onSave,
        onClose: this._onClose
       } as IAdvancedDynamicFormProps);

    ReactDOM.render(advancedDynamicForm, this.domElement);
  }

  public onDispose(): void {
    // This method should be used to free any resources that were allocated during rendering.
    ReactDOM.unmountComponentAtNode(this.domElement);
    super.onDispose();
  }

  private _onSave = (): void => {

    // You MUST call this.formSaved() after you save the form.
    this.formSaved();
  }

  private _onClose =  (): void => {
    // You MUST call this.formClosed() after you close the form.
    this.formClosed();
  }
}
