import * as React from 'react';
import styles from './ShowPnPControls.module.scss';
import { IShowPnPControlsProps } from './IShowPnPControlsProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { WebPartTitle } from "@pnp/spfx-controls-react/lib/WebPartTitle";
import { Placeholder } from "@pnp/spfx-controls-react/lib/Placeholder";

export default class ShowPnPControls extends React.Component<IShowPnPControlsProps, {}> {
  public render(): React.ReactElement<IShowPnPControlsProps> {
    return (
      (!this.props.configured ?
        <Placeholder
          iconName='Edit'
          iconText='Configure your web part'
          description='Please configure the web part.'
          buttonLabel='Configure'
          onConfigure={this._onConfigure} />
        :  
        <div className={ styles.showPnPControls }>
          <WebPartTitle displayMode={this.props.displayMode}
            title={this.props.title}
            updateProperty={this.props.updateProperty} />
        </div>
      )
    );
  }

  private _onConfigure = (): void => {
    // Context of the web part
    this.props.context.propertyPane.open();
  }
}
