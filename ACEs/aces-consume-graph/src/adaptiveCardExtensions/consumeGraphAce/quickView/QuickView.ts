import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ConsumeGraphAceAdaptiveCardExtensionStrings';
import { IConsumeGraphAceAdaptiveCardExtensionProps, IConsumeGraphAceAdaptiveCardExtensionState } from '../ConsumeGraphAceAdaptiveCardExtension';
import { Event } from '../../../services/Event';

export interface IQuickViewData {
  title: string;
  events: Event[];
}

export class QuickView extends BaseAdaptiveCardView<
  IConsumeGraphAceAdaptiveCardExtensionProps,
  IConsumeGraphAceAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      title: strings.Title,
      events: this.state.events
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}