import { Log } from '@microsoft/sp-core-library';
import {
  BaseApplicationCustomizer, 
  PlaceholderContent, 
  PlaceholderName
} from '@microsoft/sp-application-base';
import { MSGraphClientV3 } from '@microsoft/sp-http';

import * as strings from 'ShowMailboxStatusApplicationCustomizerStrings';
import { IShowMailboxStatusProps } from './components/showMailboxStatus/IShowMailboxStatusProps';
import ShowMailboxStatus from './components/showMailboxStatus/ShowMailboxStatus';

import * as React from 'react';
import * as ReactDom from 'react-dom';

const LOG_SOURCE: string = 'ShowMailboxStatusApplicationCustomizer';

/**
 * If your command set uses the ClientSideComponentProperties JSON input,
 * it will be deserialized into the BaseExtension.properties object.
 * You can define an interface to describe it.
 */
export interface IShowMailboxStatusApplicationCustomizerProperties {
  // This is an example; replace with your own property
  testMessage: string;
}

/** A Custom Action which can be run during execution of a Client Side Application */
export default class ShowMailboxStatusApplicationCustomizer
  extends BaseApplicationCustomizer<IShowMailboxStatusApplicationCustomizerProperties> {

  private _footerPlaceholder: PlaceholderContent | undefined;
  private _graphClient: MSGraphClientV3;

  public async onInit(): Promise<void> {
    Log.info(LOG_SOURCE, `Initialized ${strings.Title}`);

    this._graphClient = await this.context.msGraphClientFactory.getClient("3");

    // call render method for generating the needed html elements
    return(await this._renderPlaceHolders());
  }

  private async _renderPlaceHolders(): Promise<void> {

    // Handling the header placeholder
    if (!this._footerPlaceholder) {
      this._footerPlaceholder =
        this.context.placeholderProvider.tryCreateContent(
          PlaceholderName.Bottom,
          { onDispose: this._onDispose });

      // The extension should not assume that the expected placeholder is available.
      if (!this._footerPlaceholder) {
        console.error('The expected placeholder (Bottom) was not found.');
        return;
      }

      const element: React.ReactElement<IShowMailboxStatusProps> = React.createElement(
        ShowMailboxStatus,
        {
          graphClient: this._graphClient        
        }
      );

      ReactDom.render(element, this._footerPlaceholder.domElement);
    }
  }

  private _onDispose(): void {
    console.log('[ShowMailboxStatusApplicationCustomizer._onDispose] Disposed custom bottom placeholder.');
    ReactDom.unmountComponentAtNode(this._footerPlaceholder.domElement);
  }
}
