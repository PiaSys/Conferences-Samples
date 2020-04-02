import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'SearchWithPnPjsWebPartStrings';
import SearchWithPnPjs from './components/SearchWithPnPjs';
import { ISearchWithPnPjsProps } from './components/ISearchWithPnPjsProps';

export default class SearchWithPnPjsWebPart extends BaseClientSideWebPart <{}> {

  public render(): void {
    const element: React.ReactElement<ISearchWithPnPjsProps> = React.createElement(
      SearchWithPnPjs,
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
