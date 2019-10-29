import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'PicturesWatcherWebPartStrings';
import PicturesWatcher from './components/PicturesWatcher';
import { IPicturesWatcherProps } from './components/IPicturesWatcherProps';

import { PropertyFieldListPicker, PropertyFieldListPickerOrderBy } from '@pnp/spfx-property-controls/lib/PropertyFieldListPicker';
import { ListSubscriptionFactory } from '@microsoft/sp-list-subscription';

export interface IPicturesWatcherWebPartProps {
  picturesLibraryId: string;
}

export default class PicturesWatcherWebPart extends BaseClientSideWebPart<IPicturesWatcherWebPartProps> {

  private _onConfigure = () => {
    this.context.propertyPane.open();
  }

  public render(): void {
    const element: React.ReactElement<IPicturesWatcherProps > = React.createElement(
      PicturesWatcher,
      {
        picturesLibraryId: this.properties.picturesLibraryId,
        listSubscriptionFactory: new ListSubscriptionFactory(this),
        onConfigure: this._onConfigure,
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

  protected get disableReactivePropertyChanges(): boolean {
    return true;
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
                PropertyFieldListPicker('picturesLibraryId', {
                  label: 'Select a library',
                  selectedList: this.properties.picturesLibraryId,
                  includeHidden: false,
                  orderBy: PropertyFieldListPickerOrderBy.Title,
                  disabled: false,
                  multiSelect: false,
                  onPropertyChange: this.onPropertyPaneFieldChanged.bind(this),
                  properties: this.properties,
                  context: this.context,
                  baseTemplate: 109,
                  onGetErrorMessage: null,
                  deferredValidationTime: 0,
                  key: 'picturesLibraryIdPicker'
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
