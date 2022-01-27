import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'PnPPropertiesAceAdaptiveCardExtensionStrings';
import { IPnPPropertiesAceAdaptiveCardExtensionProps, IPnPPropertiesAceAdaptiveCardExtensionState } from '../PnPPropertiesAceAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
  description: string;
}

export class QuickView extends BaseAdaptiveCardView<
  IPnPPropertiesAceAdaptiveCardExtensionProps,
  IPnPPropertiesAceAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      description: this.properties.description
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}