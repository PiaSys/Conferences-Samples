import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'SharingSampleWebPartStrings';
import SharingSample from './components/SharingSample';
import { ISharingSampleProps } from './components/ISharingSampleProps';

export default class SharingSampleWebPart extends BaseClientSideWebPart <{}> {

  public render(): void {
    const element: React.ReactElement<ISharingSampleProps> = React.createElement(
      SharingSample,
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
