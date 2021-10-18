import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ConsumeSpoAceAdaptiveCardExtensionStrings';
import { IConsumeSpoAceAdaptiveCardExtensionProps, IConsumeSpoAceAdaptiveCardExtensionState } from '../ConsumeSpoAceAdaptiveCardExtension';
import { Issue } from '../../../services/Issue';

export interface IQuickViewData {
  title: string;
  allIssues: Issue[];
  newIssues: Issue[];
}

export class QuickView extends BaseAdaptiveCardView<
  IConsumeSpoAceAdaptiveCardExtensionProps,
  IConsumeSpoAceAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      title: strings.Title,
      allIssues: this.state.allIssues,
      newIssues: this.state.newIssues
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}