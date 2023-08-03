// Import types for supporting SPFx with the service class
import { ServiceKey, ServiceScope } from "@microsoft/sp-core-library";
import { AadTokenProviderFactory } from "@microsoft/sp-http";

// Import PnPjs types
import { graphfi, GraphFI, SPFx } from "@pnp/graph";
import "@pnp/graph/users";
import { HttpRequestError } from "@pnp/queryable";

// Import custom types
import { User } from "./User";
import { IDemoService } from "./IDemoService";

export class DemoService implements IDemoService {

    public static readonly serviceKey: ServiceKey<IDemoService> = ServiceKey.create<IDemoService>('PiaSys:DemoService', DemoService);
    
    private _graph: GraphFI = null;

    /**
     * Constructor for the service class
     * @param serviceScope Service Scope to initialize the service class
     */
    public constructor(serviceScope: ServiceScope) {

        // Initialized the PnPjs framework for SPFx
        serviceScope.whenFinished(async () => {
            const aadTokenProviderFactory = serviceScope.consume(AadTokenProviderFactory.serviceKey);
            this._graph = graphfi().using(SPFx({ aadTokenProviderFactory }));
        });
    }

    public async getCurrentUserData(): Promise<User> {
        const result = await this._graph.me();
        return { upn: result.userPrincipalName, displayName: result.displayName };
    }

    public async getCurrentUserDataWithThrottlingHandler(): Promise<User> {
        try {

            const result = await this._graph.me.select('userPrincipalName,displayName')();
            return { upn: result.userPrincipalName, displayName: result.displayName };
              
        } catch (e) {
          
            // are we dealing with an HttpRequestError?
            if (e?.isHttpRequestError) {
          
              // we can read the json from the response
              const json = await (<HttpRequestError>e).response.json();
          
              // if we have a value property we can show it
              console.log(typeof json["odata.error"] === "object" ? json["odata.error"].message.value : e.message);
          
              // if we've got throttled, we can handle it
              if ((<HttpRequestError>e).status === 429) {
                console.error((<HttpRequestError>e).statusText);

                 // and rethrow the error
                throw e;
              }
            } else {
              // not an HttpRequestError so we log message
              console.log(e.message);

              // and rethrow the error
              throw e;
            }
        }
    }
}