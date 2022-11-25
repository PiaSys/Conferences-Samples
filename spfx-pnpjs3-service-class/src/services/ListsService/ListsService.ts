import { IListsService } from "./IListsService";
import { IList } from "./IList";

// Import types for supporting SPFx with the service class
import { ServiceKey, ServiceScope } from "@microsoft/sp-core-library";
import { PageContext } from "@microsoft/sp-page-context";

// Import PnPjs types
import { spfi, SPFI, SPFx } from '@pnp/sp';
import "@pnp/sp/webs";
import "@pnp/sp/lists";
import { IListInfo } from "@pnp/sp/lists";

/**
 * Defines the concrete implementation of the interface for the Assets Service
 */
export class ListsService implements IListsService {

    public static readonly serviceKey: ServiceKey<IListsService> = ServiceKey.create<IListsService>('PiaSys:ListsService', ListsService);

    private _sp: SPFI = null;
    
    /**
     * Constructor for the service class
     * @param serviceScope Service Scope to initialize the service class
     */
    public constructor(serviceScope: ServiceScope) {

        // Initialized the PnPjs framework for SPFx
        serviceScope.whenFinished(() => {
            const pageContext = serviceScope.consume(PageContext.serviceKey);
            this._sp = spfi().using(SPFx({ pageContext }));
        });
    }

    /**
     * Returns the whole list of lists in the current site
     * @returns The whole list of lists
     */
    public async GetLists(): Promise<IList[]> {
        const lists: IListInfo[] = await this._sp.web.lists.select("Id", "Title")();

        return lists.map<IList>((l, idx, _) => { return { id: l.Id, title: l.Title}});
    }
 }