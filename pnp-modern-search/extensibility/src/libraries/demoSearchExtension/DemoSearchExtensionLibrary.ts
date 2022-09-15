import { IAdaptiveCardAction, IComponentDefinition, IExtensibilityLibrary, ILayoutDefinition, ISuggestionProviderDefinition } from '@pnp/modern-search-extensibility';
import { ServiceKey, ServiceScope } from '@microsoft/sp-core-library';
import { SPHttpClient, SPHttpClientResponse } from '@microsoft/sp-http';
import { PageContext } from '@microsoft/sp-page-context';

export class DemoSearchExtensionLibrary implements IExtensibilityLibrary {

  public static readonly serviceKey: ServiceKey<DemoSearchExtensionLibrary> =
    ServiceKey.create<DemoSearchExtensionLibrary>('SPFx:DemoSearchExtensionLibrary', DemoSearchExtensionLibrary);

  private _spHttpClient: SPHttpClient;
  private _pageContext: PageContext;
  private _currentWebUrl: string;

  public constructor(serviceScope: ServiceScope) {
    serviceScope.whenFinished(() => {
      this._spHttpClient = serviceScope.consume(SPHttpClient.serviceKey);

      this._pageContext = serviceScope.consume(PageContext.serviceKey);
      this._currentWebUrl = this._pageContext.web.absoluteUrl;
    });
  }
  
  public getCustomLayouts(): ILayoutDefinition[] {
    return [];
  }

  public getCustomWebComponents(): IComponentDefinition<any>[] {
    return [];
  }

  public getCustomSuggestionProviders(): ISuggestionProviderDefinition[] {
    return [];
  }

  public registerHandlebarsCustomizations?(handlebarsNamespace: typeof Handlebars): void {
  }

  public invokeCardAction(action: IAdaptiveCardAction): void {

    // Process the action based on type
    if (action.type === "Action.OpenUrl") {
      window.open(action.url, "_blank");
    } else if (action.type === "Action.Submit") {
      // Process the Submit action based on title
      switch (action.title.toLowerCase()) {
        case "open":

          // Invoke SPO REST
          this._spHttpClient.get(
            `${this._currentWebUrl}/_api/web/lists('${action.data.listId}')/Items(${action.data.itemId})`,
            SPHttpClient.configurations.v1, 
            null).then((response: SPHttpClientResponse) => {
              return response.json();
            }).then((item) => {
              window.open(item.ServerRedirectedEmbedUri, "_blank");
            });

          break;
        case "global click":
            alert(action.title);
            break;
        default:
          console.log('Action not supported!');
          break;
      }
    }
  }

  public name(): string {
    return 'DemoSearchExtensionLibrary';
  }
}
