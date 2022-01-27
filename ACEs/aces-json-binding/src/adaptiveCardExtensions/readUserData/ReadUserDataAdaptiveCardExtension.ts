import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { ReadUserDataPropertyPane } from './ReadUserDataPropertyPane';
import { MSGraphClient } from '@microsoft/sp-http';

export interface IReadUserDataAdaptiveCardExtensionProps {
  title: string;
  description: string;
  iconProperty: string;
}

export interface IReadUserDataAdaptiveCardExtensionState {
  description: string;
  userJson?: string;
}

const CARD_VIEW_REGISTRY_ID: string = 'ReadUserData_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ReadUserData_QUICK_VIEW';

export default class ReadUserDataAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IReadUserDataAdaptiveCardExtensionProps,
  IReadUserDataAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ReadUserDataPropertyPane | undefined;
  private graphClient: MSGraphClient;

  public async onInit(): Promise<void> {
    this.state = {
      description: this.properties.description
    };

    this.graphClient = await this.context.msGraphClientFactory.getClient();

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    setTimeout(async () => {
      const user: any = await this.graphClient
        .api("me")
        .version("v1.0")
        .select("displayName,mail,mobilePhone,userPrincipalName")
        .get();

      this.setState({
        userJson: JSON.stringify(user)
      });
    }, 500);

    return Promise.resolve();
  }

  public get title(): string {
    return this.properties.title;
  }

  protected get iconProperty(): string {
    return this.properties.iconProperty || require('./assets/SharePointLogo.svg');
  }

  protected loadPropertyPaneResources(): Promise<void> {
    return import(
      /* webpackChunkName: 'ReadUserData-property-pane'*/
      './ReadUserDataPropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ReadUserDataPropertyPane();
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
