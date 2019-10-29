import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'LocaleSampleWebPartStrings';
import LocaleSample from './components/LocaleSample';
import { ILocaleSampleProps } from './components/ILocaleSampleProps';

export interface ILocaleSampleWebPartProps {
  description: string;
}

export default class LocaleSampleWebPart extends BaseClientSideWebPart<ILocaleSampleWebPartProps> {

  public render(): void {
    const element: React.ReactElement<ILocaleSampleProps > = React.createElement(
      LocaleSample,
      {
        description: this.properties.description
      }
    );

    ReactDom.render(element, this.domElement);
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
                PropertyPaneTextField('description', {
                  label: strings.DescriptionFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
