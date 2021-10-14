import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { ClockAcePropertyPane } from './ClockAcePropertyPane';

export interface IClockAceAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface IClockAceAdaptiveCardExtensionState {
  description: string;
  time: string;
}

const CARD_VIEW_REGISTRY_ID: string = 'ClockAce_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ClockAce_QUICK_VIEW';

export default class ClockAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IClockAceAdaptiveCardExtensionProps,
  IClockAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ClockAcePropertyPane | undefined;

  public onInit(): Promise<void> {
    this.state = {
      description: this.properties.description,
      time: this.getTimeString()
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    setInterval(() => {
      this.setState({
        time: this.getTimeString()
      });
    }, 1000);

    return Promise.resolve();
  }

  private getTimeString = (): string => {
    let now = new Date();
    let hours = now.getHours();
    let hoursString = hours > 9 ? hours.toString() : "0" + hours.toString();
    let minutes = now.getMinutes();
    let minutesString = minutes > 9 ? minutes.toString() : "0" + minutes.toString();
    let seconds = now.getSeconds();
    let secondsString = seconds > 9 ? seconds.toString() : "0" + seconds.toString();
    let timeString = `${hoursString}:${minutesString}:${secondsString}`;

    return timeString;
  }

  public get title(): string {
    return this.properties.title;
  }

  protected get iconProperty(): string {
    return this.properties.iconProperty || require('./assets/SharePointLogo.svg');
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'ClockAce-property-pane'*/
      './ClockAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ClockAcePropertyPane();
        }
      );
  }

  protected renderCard(): string | undefined {
    return CARD_VIEW_REGISTRY_ID;
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return this._deferredPropertyPane!.getPropertyPaneConfiguration();
  }
}
