import { IPropertyPaneConfiguration } from '@microsoft/sp-property-pane';
import { BaseAdaptiveCardExtension } from '@microsoft/sp-adaptive-card-extension-base';
import { CardView } from './cardView/CardView';
import { QuickView } from './quickView/QuickView';
import { ConsumeSpoAcePropertyPane } from './ConsumeSpoAcePropertyPane';
import { sp } from "@pnp/sp";
import { issuesService } from '../../services/IssuesService';
import { Issue } from '../../services/Issue';

export interface IConsumeSpoAceAdaptiveCardExtensionProps {
  title: string;
  issuesListTitle: string;
  iconProperty: string;
}

export interface IConsumeSpoAceAdaptiveCardExtensionState {
  allIssues: Issue[];
  newIssues: Issue[];
}

const CARD_VIEW_REGISTRY_ID: string = 'ConsumeSpoAce_CARD_VIEW';
export const QUICK_VIEW_REGISTRY_ID: string = 'ConsumeSpoAce_QUICK_VIEW';

export default class ConsumeSpoAceAdaptiveCardExtension extends BaseAdaptiveCardExtension<
  IConsumeSpoAceAdaptiveCardExtensionProps,
  IConsumeSpoAceAdaptiveCardExtensionState
> {
  private _deferredPropertyPane: ConsumeSpoAcePropertyPane | undefined;

  public async onInit(): Promise<void> {
    this.state = {
      allIssues: [],
      newIssues: []
    };

    this.cardNavigator.register(CARD_VIEW_REGISTRY_ID, () => new CardView());
    this.quickViewNavigator.register(QUICK_VIEW_REGISTRY_ID, () => new QuickView());

    //Initialize PnPJs
    sp.setup({ spfxContext: this.context });

    // Trigger download of data
    setTimeout(async () => {
      const allIssues: Issue[] = await issuesService.GetIssues(this.properties.issuesListTitle);
      const newIssues: Issue[] = await issuesService.GetIssuesByStatus(this.properties.issuesListTitle, "New");
  
      this.setState({
        allIssues: allIssues,
        newIssues: newIssues
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
      /* webpackChunkName: 'ConsumeSpoAce-property-pane'*/
      './ConsumeSpoAcePropertyPane'
    )
      .then(
        (component) => {
          this._deferredPropertyPane = new component.ConsumeSpoAcePropertyPane();
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
