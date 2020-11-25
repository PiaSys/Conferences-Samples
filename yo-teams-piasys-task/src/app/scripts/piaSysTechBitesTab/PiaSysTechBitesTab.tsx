import * as React from "react";
import { Provider, Flex, Text, Button, Header, ThemePrepared, Input } from "@fluentui/react-northstar";
import { teamsTheme, teamsDarkTheme, teamsHighContrastTheme } from "@fluentui/react-northstar";
import TeamsBaseComponent, { ITeamsBaseComponentState } from "msteams-react-base-component";
import * as microsoftTeams from "@microsoft/teams-js";
const playlistsSource = require("./playlists.json");

/**
 * State for the piaSysTechBitesTabTab React component
 */
export interface IPiaSysTechBitesTabState extends ITeamsBaseComponentState {
    entityId?: string;
    teamsTheme: ThemePrepared;
    playlistId?: string;
    playlistDisplayName?: string;
}

/**
 * Properties for the piaSysTechBitesTabTab React component
 */
export interface IPiaSysTechBitesTabProps {

}

/**
 * Implementation of the PiaSys TechBites content page
 */
export class PiaSysTechBitesTab extends TeamsBaseComponent<IPiaSysTechBitesTabProps, IPiaSysTechBitesTabState> {

    public async componentWillMount() {
        this.updateComponentTheme(this.getQueryVariable("theme"));
        this.setState(Object.assign({}, this.state, {
            playlistId: playlistsSource.items[0].key, // Use the "Microsoft Teams" playlist
            playlistDisplayName: playlistsSource.items[0].text
        }));

        if (await this.inTeams()) {
            microsoftTeams.initialize();
            microsoftTeams.registerOnThemeChangeHandler(this.updateComponentTheme);
            microsoftTeams.getContext((context) => {
                microsoftTeams.appInitialization.notifySuccess();
                this.setState({
                    entityId: context.entityId
                });
                this.updateTheme(context.theme);
            });
        } else {
            this.setState({
                entityId: "This is not hosted in Microsoft Teams"
            });
        }
    }

    /**
     * The render() method to create the UI of the tab
     */
    public render() {
        return (
            <Provider theme={this.state.teamsTheme}>
            <Flex column gap="gap.smaller">
              <Header>PiaSys Tech Bites Demo</Header>
              <Text>Selected YouTube Playlist:</Text>
              <Input value={this.state.playlistDisplayName} disabled></Input>
              <Button content="Change Playlist" onClick={this.onChangePlaylist}></Button>
              <Button content="Show Playlist" primary onClick={this.onShowPlaylist}></Button>
              <Text content="(C) Copyright PiaSys.com" size="smallest"></Text>
            </Flex>
          </Provider>
        );
    }

    private updateComponentTheme = (theme: string = "default"): void => {
        let newTheme: ThemePrepared;

        switch (theme) {
          case "default":
            newTheme = teamsTheme;
            break;
          case "dark":
            newTheme = teamsDarkTheme;
            break;
          case "contrast":
            newTheme = teamsHighContrastTheme;
            break;
          default:
            newTheme = teamsTheme;
            break;
        }
        // update the state
        this.setState(Object.assign({}, this.state, {
          teamsTheme: newTheme
        }));
      }

    private onChangePlaylist = (event: React.MouseEvent<HTMLButtonElement>): void => {
        const taskModuleInfo = {
            title: "Select Playlist",
            url: this.appRoot() + `/piaSysTechBitesTab/selector.html?theme={theme}&playlistId=${this.state.playlistId}&playlistDisplayName=${this.state.playlistDisplayName}`,
            width: 450,
            height: 250
        };

        const submitHandler = (err: string, result: any): void => {
            this.setState(Object.assign({}, this.state, {
                playlistId: result.playlistId,
                playlistDisplayName: result.playlistDisplayName
            }));
        };

        microsoftTeams.tasks.startTask(taskModuleInfo, submitHandler);
    }

    private onShowPlaylist = (event: React.MouseEvent<HTMLButtonElement>): void => {
        const taskModuleInfo = {
            title: `Playlist: ${this.state.playlistDisplayName}`,
            url: this.appRoot() + `/piaSysTechBitesTab/playlist.html?playlistId=${this.state.playlistId}`,
            width: 600,
            height: 350
            };

        microsoftTeams.tasks.startTask(taskModuleInfo);
    }

    private appRoot(): string {
        if (typeof window === "undefined") {
            return "https://{{HOSTNAME}}";
        } else {
            return window.location.protocol + "//" + window.location.host;
        }
    }
}
