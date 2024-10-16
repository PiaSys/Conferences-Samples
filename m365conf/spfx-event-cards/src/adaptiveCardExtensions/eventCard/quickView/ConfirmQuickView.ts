import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'EventCardAdaptiveCardExtensionStrings';
import { IEventCardAdaptiveCardExtensionProps } from '../IEventCardAdaptiveCardExtensionProps';
import { IEventCardAdaptiveCardExtensionState } from '../IEventCardAdaptiveCardExtensionState';

export interface IConfirmQuickViewData {
  title: string;
  description: string;
  imageUrl: string;
}

export class ConfirmQuickView extends BaseAdaptiveCardView<
  IEventCardAdaptiveCardExtensionProps,
  IEventCardAdaptiveCardExtensionState,
  IConfirmQuickViewData
> {
  public get data(): IConfirmQuickViewData {
    return {
      title: strings.ConfirmQuickView.Title,
      description: strings.ConfirmQuickView.Description,
      imageUrl: require('../assets/success.png')
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/ConfirmQuickViewTemplate.json');
  }

  public onAction(action: IActionArguments): void {
    if (action.id === "close") {
        this.quickViewNavigator.close();
    }
  }
}