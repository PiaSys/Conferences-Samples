import { 
  ISPFxAdaptiveCard, 
  BaseAdaptiveCardView, 
  IActionArguments
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ShowActionsAdaptiveCardExtensionStrings';
import { IShowActionsAdaptiveCardExtensionProps, IShowActionsAdaptiveCardExtensionState } from '../ShowActionsAdaptiveCardExtension';

export interface IQuickViewData {
  subTitle: string;
  title: string;
  shortText: string;
  longText: string;
  phone: string;
  url: string;
  email: string;
  number: number;
  date: Date;
  flag: boolean;
  category: string[];
}

export class QuickView extends BaseAdaptiveCardView<
  IShowActionsAdaptiveCardExtensionProps,
  IShowActionsAdaptiveCardExtensionState,
  IQuickViewData
> {
  public get data(): IQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      shortText: this.state.shortText,
      longText: this.state.longText,
      phone: this.state.phone,
      url: this.state.url,
      email: this.state.email,
      number: this.state.number,
      date: this.state.date,
      flag: this.state.flag,
      category: this.state.category    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/QuickViewTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {

    console.log(action);

    if (action.id == "saveButton") {
      this.setState({
        shortText: action.data.shortTextEdit,
        longText: action.data.longTextEdit,
        phone: action.data.phoneEdit,
        url: action.data.urlEdit,
        email: action.data.emailEdit,
        number: +action.data.numberEdit,
        date: new Date(`${action.data.startDateEdit} ${action.data.startTimeEdit}`),
        flag: action.data.flagEdit == "true",
        category: action.data.categoryEdit.split(',')
      });
    }
  }
}