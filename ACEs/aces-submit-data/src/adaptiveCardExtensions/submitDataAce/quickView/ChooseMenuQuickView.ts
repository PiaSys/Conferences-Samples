import { ISPFxAdaptiveCard, BaseAdaptiveCardView, IActionArguments } from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'SubmitDataAceAdaptiveCardExtensionStrings';
import { ISubmitDataAceAdaptiveCardExtensionProps,
  ISubmitDataAceAdaptiveCardExtensionState,
  QUICK_VIEW_CONFIRM_MENU_REGISTRY_ID
} from '../SubmitDataAceAdaptiveCardExtension';

export interface IChooseMenuQuickViewData {
  subTitle: string;
  title: string;
  description: string;
}

export class ChooseMenuQuickView extends BaseAdaptiveCardView<
  ISubmitDataAceAdaptiveCardExtensionProps,
  ISubmitDataAceAdaptiveCardExtensionState,
  IChooseMenuQuickViewData
> {
  public get data(): IChooseMenuQuickViewData {
    return {
      subTitle: strings.SubTitle,
      title: strings.Title,
      description: this.properties.description
    };
  }

  public get template(): ISPFxAdaptiveCard {
    return require('./template/ChooseMenuQuickViewTemplate.json');
  }

  public onAction(action: IActionArguments | any): void {
    if (action.id == "Submit") {

      this.setState({
        mainCourse: action.data.mainCourse,
        dessert: action.data.dessert,
        beverages: action.data.beverages,
      });

      this.quickViewNavigator.push(QUICK_VIEW_CONFIRM_MENU_REGISTRY_ID);
    }
  }
}