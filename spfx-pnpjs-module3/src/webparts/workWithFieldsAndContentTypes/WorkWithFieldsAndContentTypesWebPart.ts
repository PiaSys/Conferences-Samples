import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'WorkWithFieldsAndContentTypesWebPartStrings';
import WorkWithFieldsAndContentTypes from './components/WorkWithFieldsAndContentTypes';
import { IWorkWithFieldsAndContentTypesProps } from './components/IWorkWithFieldsAndContentTypesProps';

export interface IWorkWithFieldsAndContentTypesWebPartProps {
  listTitle: string;
}

export default class WorkWithFieldsAndContentTypesWebPart extends BaseClientSideWebPart <IWorkWithFieldsAndContentTypesWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IWorkWithFieldsAndContentTypesProps> = React.createElement(
      WorkWithFieldsAndContentTypes,
      {
        context: this.context,
        listTitle: this.properties.listTitle
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

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return {
      pages: [
        {
          header: {
            description: strings.PropertyPaneDescription
          },
          groups: [
            {
              groupName: strings.BasicGroupName,
              groupFields: [
                PropertyPaneTextField('listTitle', {
                  label: strings.ListTitleFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
