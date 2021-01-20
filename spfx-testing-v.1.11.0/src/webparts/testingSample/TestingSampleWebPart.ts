import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'TestingSampleWebPartStrings';
import TestingSample from './components/TestingSample';
import { ITestingSampleProps } from './components/ITestingSampleProps';

export interface ITestingSampleWebPartProps {
  title: string;
  subTitle: string;
}

export default class TestingSampleWebPart extends BaseClientSideWebPart<ITestingSampleWebPartProps> {

  public render(): void {
    const element: React.ReactElement<ITestingSampleProps > = React.createElement(
      TestingSample,
      {
        title: this.properties.title,
        subTitle: this.properties.subTitle
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
                PropertyPaneTextField('title', {
                  label: strings.TitleFieldLabel
                }),
                PropertyPaneTextField('subTitle', {
                  label: strings.SubTitleFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
