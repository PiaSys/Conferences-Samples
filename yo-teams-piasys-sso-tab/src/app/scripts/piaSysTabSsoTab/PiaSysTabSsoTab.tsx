import * as React from "react";
import { Provider, Flex, Text, Button, Header } from "@fluentui/react-northstar";
import TeamsBaseComponent, { ITeamsBaseComponentState } from "msteams-react-base-component";
import * as microsoftTeams from "@microsoft/teams-js";
import jwt_decode from "jwt-decode";

import { ServiceFactory } from '../../services/serviceFactory';
import { IConsumeSPOService } from "../../services/ConsumeSPOService/IConsumeSPOService";

/**
 * State for the piaSysTabSsoTabTab React component
 */
export interface IPiaSysTabSsoTabState extends ITeamsBaseComponentState {
    entityId?: string;
    name?: string;
    error?: string;
    webId: string | undefined;
    webTitle: string | undefined;
    userPrincipalName: string | undefined;
    userTitle: string | undefined;
}

/**
 * Properties for the piaSysTabSsoTabTab React component
 */
export interface IPiaSysTabSsoTabProps {

}

/**
 * Implementation of the PiaSysTabSSO content page
 */
export class PiaSysTabSsoTab extends TeamsBaseComponent<IPiaSysTabSsoTabProps, IPiaSysTabSsoTabState> {

    public async componentWillMount() {
        this.updateTheme(this.getQueryVariable("theme"));


        microsoftTeams.initialize(() => {
            microsoftTeams.registerOnThemeChangeHandler(this.updateTheme);
            microsoftTeams.getContext((context) => {
                this.setState({
                    entityId: context.entityId
                });
                this.updateTheme(context.theme);
                microsoftTeams.authentication.getAuthToken({
                    successCallback: (token: string) => {
                        const decoded: { [key: string]: any; } = jwt_decode(token) as { [key: string]: any; };
                        microsoftTeams.appInitialization.notifySuccess();

                        // Consume the backend Azure Function
                        const consumeSPOService : IConsumeSPOService = ServiceFactory.getConsumeSPOService();
                        consumeSPOService.getSPOInformation(token).then(result => {

                            this.setState({ 
                                name: decoded!.name,
                                webId: result?.web.id,
                                webTitle: result?.web.title,
                                userPrincipalName: result?.user.userPrincipalName,
                                userTitle: result?.user.title 
                            });

                        });
                    },
                    failureCallback: (message: string) => {
                        this.setState({ error: message });
                        microsoftTeams.appInitialization.notifyFailure({
                            reason: microsoftTeams.appInitialization.FailedReason.AuthFailed,
                            message
                        });
                    },
                    resources: [process.env.PIASYSTABSSO_APP_URI as string]
                });
            });
        });
    }

    /**
     * The render() method to create the UI of the tab
     */
    public render() {
        return (
            <Provider theme={this.state.theme}>
                <Flex fill={true} column styles={{
                    padding: ".8rem 0 .8rem .5rem"
                }}>
                    <Flex.Item>
                        <Header content="This tab relies on SSO!" />
                    </Flex.Item>
                    <Flex.Item>
                        <div>

                            <div>
                                {this.state.name && 
                                    <div>
                                        <Text content={`Hello ${this.state.name}`} />
                                    </div>
                                }
                                {this.state.webId && 
                                    <div>
                                        <Text content={`Site ID from SPO is: ${this.state.webId}`} />
                                    </div>
                                }
                                {this.state.webTitle && 
                                    <div>
                                        <Text content={`Site Title from SPO is: ${this.state.webTitle}`} />
                                    </div>
                                }
                                {this.state.userPrincipalName && 
                                    <div>
                                        <Text content={`User's UPN from SPO is: ${this.state.userPrincipalName}`} />
                                    </div>
                                }
                                {this.state.userTitle && 
                                    <div>
                                        <Text content={`User's DisplayName from SPO is: ${this.state.userTitle}`} />
                                    </div>
                                }
                            </div>
                            {this.state.error && <div><Text content={`An SSO error occurred ${this.state.error}`} /></div>}
                        </div>
                    </Flex.Item>
                    <Flex.Item styles={{
                        padding: ".8rem 0 .8rem .5rem"
                    }}>
                        <Text size="smaller" content="(C) Copyright PiaSys.com" />
                    </Flex.Item>
                </Flex>
            </Provider>
        );
    }
}
