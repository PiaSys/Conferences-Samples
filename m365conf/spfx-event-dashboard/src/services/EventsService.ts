// Import the service related types
import { IEventsService } from "./IEventsService";
import { ISpeaker, ISession, IAttendee } from "./EventsTypes";

// Import types for supporting SPFx with the service class
import { ServiceKey, ServiceScope } from "@microsoft/sp-core-library";
import { PageContext } from "@microsoft/sp-page-context";
import { MSGraphClientV3, MSGraphClientFactory } from "@microsoft/sp-http";

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
    private _graphClient: MSGraphClientV3 = null;

    /**
     * Constructor for the service class
     * @param serviceScope Service Scope to initialize the service class
     */
    public constructor(serviceScope: ServiceScope) {

        // Initialized the PnPjs framework for SPFx
        serviceScope.whenFinished(async () => {
            const pageContext = serviceScope.consume(PageContext.serviceKey);
            this._sp = spfi().using(SPFx({ pageContext }));

            const graphClientFactory = serviceScope.consume(MSGraphClientFactory.serviceKey);
            this._graphClient = await graphClientFactory.getClient("3");
        });
    }

    /**
     * Returns the whole list of Speakers in the current site
     * @returns The whole list of speakers
     */
    public async ListSpeakers(): Promise<ISpeaker[]> {
        const items: any = await this._sp.web.lists.getByTitle('Speakers').items();
        return items.map((i: { Id: any; Title: any; SpeakerEmail: any; SpeakerExpertise: any; }) => 
            <ISpeaker>{ id: i.Id, title: i.Title, email: i.SpeakerEmail, expertise: i.SpeakerExpertise });
    }

     /**
      * Returns the whole list of Sessions in the current site
      * @returns The whole list of sessions
      */
    public async ListSessions(): Promise<ISession[]> {
        const items: any = await this._sp.web.lists.getByTitle('Sessions').items();
        return items.map((i: { Id: any; Title: any; SessionTopic: any; SessionLevel: any; SessionApproved: any; }) => 
            <ISession>{ id: i.Id, title: i.Title, topic: i.SessionTopic, level: i.SessionLevel, approved: i.SessionApproved });
    }
  
     /**
      * Returns the whole list of Attendees in the current site
      * @returns The whole list of attendees
      */
    public async ListAttendees(): Promise<IAttendee[]> {
        const items: any = await this._sp.web.lists.getByTitle('Attendees').items();
        return items.map((i: { Id: any; Title: any; AttendeeCompany: any; AttendeeEmail: any; }) => 
            <IAttendee>{ id: i.Id, title: i.Title, company: i.AttendeeCompany, email: i.AttendeeEmail });
    }

    /**
     * Schedule a session in the conference agenda
     * @returns Nothing in case of success
     */
    public async AssignSessionEvaluationTask(session: ISession, groupId: string): Promise<void> {

        const plans: { value: { id: string, title: string}[] } = await this._graphClient
            .api(`/groups/${groupId}/planner/plans`)
            .version("v1.0")
            .select('id, title')
            .get();

        if (plans.value.length <= 0) {
            return;
        }

        const buckets: { value: { id: string}[] } = await this._graphClient
            .api(`/groups/${groupId}/planner/plans/${plans.value[0].id}/buckets`)
            .version("v1.0")
            .select('id, title')
            .get();

        if (buckets.value.length <= 0) {
            return;
        }
    
        const task: { value: { id: string}[] } = await this._graphClient
            .api(`/planner/tasks`)
            .version("v1.0")
            .post({
                planId: plans.value[0].id,
                bucketId: buckets.value[0].id,
                title: `Evaluate session: ${session.title}`
            });
            
        console.log(task);
    }
}
