import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'EventCardAdaptiveCardExtensionStrings';
import { IEventCardAdaptiveCardExtensionProps } from '../IEventCardAdaptiveCardExtensionProps';
import { IEventCardAdaptiveCardExtensionState } from '../IEventCardAdaptiveCardExtensionState';

export interface IErrorQuickViewData {
  title: string;
  description: string;
  imageUrl: string;
}

export class ErrorQuickView extends BaseAdaptiveCardView<
  IEventCardAdaptiveCardExtensionProps,
  IEventCardAdaptiveCardExtensionState,
  IErrorQuickViewData
> {
  public get data(): IErrorQuickViewData {
    return {
      title: strings.ErrorQuickView.Title,
      description: this.state.error,
      imageUrl: require('../assets/error.png')
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/ErrorQuickViewTemplate.json');
  }

  public onAction(action: IActionArguments): void {
    if (action.id == "close") {
      this.quickViewNavigator.close();
    }
  }
}