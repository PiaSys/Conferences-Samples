import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'PlayWithBatchingAndCachingWebPartStrings';
import PlayWithBatchingAndCaching from './components/PlayWithBatchingAndCaching';
import { IPlayWithBatchingAndCachingProps } from './components/IPlayWithBatchingAndCachingProps';

export default class PlayWithBatchingAndCachingWebPart extends BaseClientSideWebPart <{}> {

  public render(): void {
    const element: React.ReactElement<IPlayWithBatchingAndCachingProps> = React.createElement(
      PlayWithBatchingAndCaching,
      {
        context: this.context
      }
    );

    ReactDom.render(element, this.domElement);
  }

  protected onDispose(): void {
    ReactDom.unmountComponentAtNode(this.domElement);
  }

  protected get dataVersion(): Version {
    return Version.parse('1.0');
  }
}
