import { Issue } from './Issue';
import { sp } from "@pnp/sp";
import "@pnp/sp/webs";
import "@pnp/sp/lists";
import "@pnp/sp/items";

interface spoIssueItem {
    id: number;
    Title: string;
    Priority: string;
    Status: string;
}

export interface IIssuesService {
    GetIssues: (issuesList: string) => Promise<Issue[]>;
    GetIssuesByStatus: (issuesList: string, status: string) => Promise<Issue[]>;
}

export class IssuesService implements IIssuesService {
    public async GetIssues(issuesList: string): Promise<Issue[]> {
        const items: spoIssueItem[] = await sp.web.lists
            .getByTitle(issuesList)
            .items.select("id", "Title", "Priority", "Status")
            .getAll();

        let issues: Issue[] = items.map<Issue>((v, i, a): Issue => { return { 
                title: v.Title,
                status: v.Status,
                priority: v.Priority, 
            }; 
        });

        return issues;
    }

    public async GetIssuesByStatus(issuesList: string, status: string): Promise<Issue[]> {
        const items: spoIssueItem[] = await sp.web.lists
            .getByTitle(issuesList)
            .getItemsByCAMLQuery({ ViewXml: `<View><ViewFields><FieldRef Name="ID"></FieldRef><FieldRef Name="Title"></FieldRef><FieldRef Name="Priority"></FieldRef><FieldRef Name="Status"></FieldRef></ViewFields><Query><Where><Eq><FieldRef Name="Status"/><Value Type="Choice">${status}</Value></Eq></Where></Query></View>`});

        /**
         * <View>
         *      <ViewFields>
         *          <FieldRef Name="ID"></FieldRef>
         *          <FieldRef Name="Title"></FieldRef>
         *          <FieldRef Name="Priority"></FieldRef>
         *          <FieldRef Name="Status"></FieldRef>
         *      </ViewFields>
         *      <Query>
         *          <Where>
         *              <Eq><FieldRef Name="Status"/><Value Type="Choice">${status}</Value></Eq>
         *          </Where>
         *      </Query>
         * </View>
         */

        let issues: Issue[] = items.map<Issue>((v, i, a): Issue => { return { 
            title: v.Title,
            status: v.Status,
            priority: v.Priority, 
            };
        });

        return issues;
    }
}

export const issuesService = new IssuesService();