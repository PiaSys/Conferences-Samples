import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField,
  PropertyPaneDropdown,
  IPropertyPaneDropdownOption
} from '@microsoft/sp-webpart-base';
import { escape } from '@microsoft/sp-lodash-subset';

import styles from './ShowPnPjs.module.scss';
import * as strings from 'showPnPjsStrings';
import { IShowPnPjsWebPartProps } from './IShowPnPjsWebPartProps';

import pnp from "sp-pnp-js";
import { ItemAddResult } from "sp-pnp-js";

export default class ShowPnPjsWebPart extends BaseClientSideWebPart<IShowPnPjsWebPartProps> {

  private listsOptions: IPropertyPaneDropdownOption[];

  public onInit(): Promise<void> {

    return super.onInit().then(_ => {
      pnp.setup({
        spfxContext: this.context
      });      
    });
  }

  public render(): void {
    this.domElement.innerHTML = `
      <div class="${styles.helloWorld}">
        <div class="${styles.container}">
          <div class="ms-Grid-row ms-bgColor-themeDark ms-fontColor-white ${styles.row}">
            <div class="ms-Grid-col ms-u-lg10 ms-u-xl8 ms-u-xlPush2 ms-u-lgPush1">
              <span class="ms-font-xl ms-fontColor-white">Welcome to SharePoint!</span>
              <p class="ms-font-l ms-fontColor-white">Customize SharePoint experiences using Web Parts.</p>
              <p class="ms-font-l ms-fontColor-white">${escape(this.properties.description)}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.PropertyPaneTargetList)}: ${escape(this.properties.targetList)}</p>
            </div>
          </div>
        </div>
      </div>`;
  }

  protected get dataVersion(): Version {
    return Version.parse('1.0');
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {

    this.fetchLists().then((response) => {
      this.listsOptions = response;
      this.context.propertyPane.refresh();
    });

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
                }),
                PropertyPaneDropdown('targetList', {
                  label: strings.TargetListFieldLabel,
                  options: this.listsOptions
                })
              ]
            }
          ]
        }
      ]
    };
  }

  private fetchLists(): Promise<IPropertyPaneDropdownOption[]> {

    return pnp.sp.web.lists.get().then((response) => {
        var options: Array<IPropertyPaneDropdownOption> = new Array<IPropertyPaneDropdownOption>();
        response.map((list: any) => {
            options.push( { key: list.Id, text: list.Title });
        });

        return options;
    });
  }

  private playWithRequests(): void {

    pnp.sp.web.lists.getByTitle("Custom List").items.add({
      Title: "Title",
      Description: "Description"
    }).then((iar: ItemAddResult) => {

        console.log(iar);
    });
  }

  private playWithBatching(): void {
    let id: number = 1;
    let batch = pnp.sp.createBatch();

    pnp.sp.web.lists.getByTitle("Documents").inBatch(batch).get().then((response) => {
      // Handle here the returned list 
    });

    pnp.sp.web.lists.getByTitle("Customers").items.getById(id).inBatch(batch).get().then((response) => {
      // Handle here the returned list item
    });

    batch.execute().then(() => {
      // Handle here any completion task, because the batch activity is fully completed!
    });
  }

  private playWithCaching(): void {

    pnp.sp.web.lists.getByTitle("Documents").usingCaching().get().then((response) => {
      // Handle here the returned list 
    });
  }
}
