import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'WorkingWithListsWebPartStrings';
import WorkingWithLists from './components/WorkingWithLists';
import { IWorkingWithListsProps } from './components/IWorkingWithListsProps';

export interface IWorkingWithListsWebPartProps {
  listTitle: string;
}

export default class WorkingWithListsWebPart extends BaseClientSideWebPart <IWorkingWithListsWebPartProps> {

  public render(): void {
    const element: React.ReactElement<IWorkingWithListsProps> = React.createElement(
      WorkingWithLists,
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
