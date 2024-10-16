import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { TaskListPropertyPane } from './TaskListPropertyPane';

export interface ITaskListAdaptiveCardExtensionProps {
  title: string;
}

export interface ITaskListAdaptiveCardExtensionState {
  tasks: TodoTask[];
}

export interface TodoTask {
  id: number;
  title: string;
  dueDate: Date;
}

const CARD_VIEW_REGISTRY_ID: string = 'TaskList_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'TaskList_QUICK_VIEW';

export default class TaskListAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  ITaskListAdaptiveCardExtensionProps,
  ITaskListAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: TaskListPropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      tasks: [
        { id: 1, title: 'Task 1', dueDate: new Date('2023-05-03T00:00:00Z') },
        { id: 2, title: 'Task 2', dueDate: new Date('2023-05-12T00:00:00Z') },
        { id: 3, title: 'Task 3', dueDate: new Date('2023-05-04T00:00:00Z') },
        { id: 4, title: 'Task 4', dueDate: new Date('2023-05-08T00:00:00Z') },
        { id: 5, title: 'Task 5', dueDate: new Date('2023-05-11T00:00:00Z') }
      ]
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    return Promise.resolve();
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'TaskList-property-pane'*/
      './TaskListPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.TaskListPropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane?.getPropertyPaneConfiguration();
  }
}
