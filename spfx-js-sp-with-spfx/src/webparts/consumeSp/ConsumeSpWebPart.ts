import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';
import { escape } from '@microsoft/sp-lodash-subset';

import styles from './ConsumeSp.module.scss';
import * as strings from 'consumeSpStrings';
import { IConsumeSpWebPartProps } from './IConsumeSpWebPartProps';

import {
  Environment,
  EnvironmentType
} from '@microsoft/sp-core-library';

import {
  SPHttpClient,
  SPHttpClientResponse   
} from '@microsoft/sp-http';

export interface IList 
{
    title: string;
    id: string;
}

export interface ILists {
    value: IList[];
}

export default class ConsumeSpWebPart extends BaseClientSideWebPart<IConsumeSpWebPartProps> {

  public render(): void {

    let currentContext : string;

    if (Environment.type === EnvironmentType.Local)
    {
      // We are working in localhost
      currentContext = "Local Workbench";
    }
    else
    {
      // We are in SharePoint Online
      switch (Environment.type)
      {
        case EnvironmentType.SharePoint:
          // SharePoint Online Modern Page
          currentContext = "SharePoint Online - Modern Page";
          break;
        case EnvironmentType.ClassicSharePoint:
          // SharePoint Online Classic Page
          currentContext = "SharePoint Online - Classic Page";
          break;
      }

      this.context.spHttpClient.get(this.context.pageContext.web.absoluteUrl + 
        `/_api/web/lists?$filter=Hidden eq false`, SPHttpClient.configurations.v1)
        .then((response: SPHttpClientResponse) => {
          return response.json();
        })
        .then((lists: ILists) => {
          lists.value.forEach(list => {
            console.log(list.title);
          });
        });
    }

    this.domElement.innerHTML = `
      <div class="${styles.helloWorld}">
        <div class="${styles.container}">
          <div class="ms-Grid-row ms-bgColor-themeDark ms-fontColor-white ${styles.row}">
            <div class="ms-Grid-col ms-u-lg10 ms-u-xl8 ms-u-xlPush2 ms-u-lgPush1">
              <span class="ms-font-xl ms-fontColor-white">Welcome to SharePoint!</span>
              <p class="ms-font-l ms-fontColor-white">Context: ${escape(currentContext)}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(this.properties.description)}</p>
              <a href="https://aka.ms/spfx" class="${styles.button}">
                <span class="${styles.label}">Learn more</span>
              </a>
            </div>
          </div>
        </div>
      </div>`;
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
