import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';

import * as strings from 'RenderAdaptiveCardWebPartStrings';
import RenderAdaptiveCard from './components/RenderAdaptiveCard';
import { IRenderAdaptiveCardProps } from './components/IRenderAdaptiveCardProps';
import { PropertyFieldFilePicker, IPropertyFieldFilePickerProps, IFilePickerResult } from "@pnp/spfx-property-controls/lib/PropertyFieldFilePicker";
import { sp } from "@pnp/sp";

export interface IRenderAdaptiveCardWebPartProps {
  cardUrl: IFilePickerResult;
}

export default class RenderAdaptiveCardWebPart extends BaseClientSideWebPart<IRenderAdaptiveCardWebPartProps> {

  public onInit(): Promise<void> {

    return super.onInit().then(_ => {
      sp.setup({
        spfxContext: this.context
      });
    });
  }

  public render(): void {

    const cardUrl: string = this.properties.cardUrl != undefined ? 
      this.properties.cardUrl.fileAbsoluteUrl
        .substring(this.context.pageContext.site.absoluteUrl.length
            - this.context.pageContext.site.serverRelativeUrl.length) : undefined;

    const element: React.ReactElement<IRenderAdaptiveCardProps> = React.createElement(
      RenderAdaptiveCard,
      {
        cardUrl: cardUrl
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
                PropertyFieldFilePicker('cardUrl', {
                  context: this.context,
                  filePickerResult: this.properties.cardUrl,
                  onPropertyChange: this.onPropertyPaneFieldChanged.bind(this),
                  properties: this.properties,
                  onSave: (e: IFilePickerResult) => { console.log(e); this.properties.cardUrl = e;  },
                  onChanged: (e: IFilePickerResult) => { console.log(e); this.properties.cardUrl = e; },
                  key: "cardUrlId",
                  buttonLabel: strings.CardUrlButtonLabel,
                  label: strings.CardUrlFieldLabel,                  
              })              ]
            }
          ]
        }
      ]
    };
  }
}
