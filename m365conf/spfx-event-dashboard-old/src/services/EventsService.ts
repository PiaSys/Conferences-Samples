// Import the service related types
import { IEventsService } from "./IEventsService";
import { ISpeaker, ISession, IAttendee } from "./EventsTypes";

// Import types for supporting SPFx with the service class
import { ServiceKey, ServiceScope } from "@microsoft/sp-core-library";
import { PageContext } from "@microsoft/sp-page-context";

// Import PnPjs types
import { spfi, SPFI, SPFx } from '@pnp/sp';
import "@pnp/sp/webs";
import "@pnp/sp/lists";
import "@pnp/sp/items";

/**
 * Defines the concrete implementation of the interface for the Events Service
 */
 export class EventsService implements IEventsService {

    public static readonly serviceKey: ServiceKey<IEventsService> = ServiceKey.create<IEventsService>('PnP:EventssService', EventsService);

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
     * Returns the whole list of Speakers in the current site
     * @returns The whole list of speakers
     */
    public async ListSpeakers(): Promise<ISpeaker[]> {

        const items: any = await this._sp.web.lists.getByTitle('Speakers').items();
        console.log(items);
        // return items.map(i => { id: i.id, title: i.title, email: i.email, expertise: i.expertise });

        return null;
    }

     /**
      * Returns the whole list of Sessions in the current site
      * @returns The whole list of sessions
      */
    public async ListSessions(): Promise<ISession[]> {

        const items: any = await this._sp.web.lists.getByTitle('Sessions').items();
        console.log(items);

        return null;
    }
  
     /**
      * Returns the whole list of Attendees in the current site
      * @returns The whole list of attendees
      */
    public async ListAttendees(): Promise<IAttendee[]> {

        const items: any = await this._sp.web.lists.getByTitle('Attendees').items();
        console.log(items);

        return null;
    }
 }