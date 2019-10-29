import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-webpart-base';

import * as strings from 'SamplePublisherWebPartStrings';
import SamplePublisher from './components/SamplePublisher';
import { ISamplePublisherProps } from './components/ISamplePublisherProps';

// import interfaces for Dynamic Data
import { IDynamicDataPropertyDefinition, IDynamicDataCallables } from '@microsoft/sp-dynamic-data';

// import custom data contracts interfaces
import { IDynamicText, IDynamicNumber } from '../../dataContracts';

export interface ISamplePublisherWebPartProps {
}

export default class SamplePublisherWebPart extends BaseClientSideWebPart<ISamplePublisherWebPartProps>
  implements IDynamicDataCallables {

  private _textValue: IDynamicText;
  private _numericValue: IDynamicNumber;

  protected onInit(): Promise<void> {
    // register this web part as dynamic data source
    this.context.dynamicDataSourceManager.initializeSource(this);

    return Promise.resolve();
  }

  // provide the source dynamic properties
  public getPropertyDefinitions(): ReadonlyArray<IDynamicDataPropertyDefinition> {
    return [
      {
        id: 'dynamicText',
        title: 'Dynamic Text'
      },
      {
        id: 'dynamicNumber',
        title: 'Dynamic Number'
      }
    ];
  }

  public getPropertyValue(propertyId: string): IDynamicText | IDynamicNumber {
    switch (propertyId) {
      case 'dynamicText':
        return this._textValue;
      case 'dynamicNumber':
        return this._numericValue;
    }

    throw new Error('Bad property id');
  }

  private _onTextChanged = (text: IDynamicText): void => {
    this._textValue = text;
    // notify that the value has changed
    this.context.dynamicDataSourceManager.notifyPropertyChanged('dynamicText');
  }

  private _onNumberChanged = (number: IDynamicNumber): void => {
    this._numericValue = number;
    // notify that the value has changed
    this.context.dynamicDataSourceManager.notifyPropertyChanged('dynamicNumber');
  }

  public render(): void {
    const element: React.ReactElement<ISamplePublisherProps > = React.createElement(
      SamplePublisher,
      {
        onTextChanged: this._onTextChanged,
        onNumberChanged: this._onNumberChanged,
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
      pages: []
    };
  }
}
