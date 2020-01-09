import * as React from 'react';
import * as ReactDom from 'react-dom';
import { override } from '@microsoft/decorators';
import { Log } from '@microsoft/sp-core-library';
import {
  BaseApplicationCustomizer, PlaceholderContent, PlaceholderName
} from '@microsoft/sp-application-base';
import { Dialog } from '@microsoft/sp-dialog';

import * as strings from 'TallHeaderApplicationCustomizerStrings';
import { TallHeader } from './components/tallHeader';

const LOG_SOURCE: string = 'TallHeaderApplicationCustomizer';

/**
 * If your command set uses the ClientSideComponentProperties JSON input,
 * it will be deserialized into the BaseExtension.properties object.
 * You can define an interface to describe it.
 */
export interface ITallHeaderApplicationCustomizerProperties {
  // This is an example; replace with your own property
  testMessage: string;
}

/** A Custom Action which can be run during execution of a Client Side Application */
export default class TallHeaderApplicationCustomizer
  extends BaseApplicationCustomizer<ITallHeaderApplicationCustomizerProperties> {

  private _topPlaceholder?: PlaceholderContent;

  @override
  public async onInit(): Promise<void> {
    Log.info(LOG_SOURCE, `Initialized ${strings.Title}`);

    let message: string = this.properties.testMessage;
    if (!message) {
      message = '(No properties were provided.)';
    }

    return (await this._renderPlaceHolders());
  }

  private async _renderPlaceHolders(): Promise<void> {

    // check if the application customizer has already been rendered
    if (!this._topPlaceholder) {
      // create a DOM element in the top placeholder for the application customizer to render
      this._topPlaceholder = this.context.placeholderProvider
        .tryCreateContent(PlaceholderName.Top, { onDispose: this._handleDispose });
    }

    // if the top placeholder is not available, there is no place in the UI
    // for the app customizer to render, so quit.
    if (!this._topPlaceholder) {
      return;
    }

    const element: React.ReactElement<{}> = React.createElement(
      TallHeader,
      {
      }
    );

    // render the UI using a React component
    ReactDom.render(element, this._topPlaceholder.domElement);
  }

  private _handleDispose(): void {
    console.log('[PortalFooterApplicationCustomizer._onDispose] Disposed custom bottom placeholder.');
  }
}
