import { ISPFxAdaptiveCard, BaseAdaptiveCardView } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'TaskListAdaptiveCardExtensionStrings';
import { ITaskListAdaptiveCardExtensionProps, ITaskListAdaptiveCardExtensionState, TodoTask } from '../TaskListAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
  tasks: TodoTask[];
}

export class QuickView extends BaseAdaptiveCardView<
  ITaskListAdaptiveCardExtensionProps,
  ITaskListAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      tasks: this.state.tasks
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }
}