import * as React from "react";
import { Provider, Flex, Button, Dropdown, DropdownProps, ThemePrepared, Input } from "@fluentui/react-northstar";
import { teamsTheme, teamsDarkTheme, teamsHighContrastTheme } from "@fluentui/react-northstar";
import TeamsBaseComponent, { ITeamsBaseComponentState } from "msteams-react-base-component";
import * as microsoftTeams from "@microsoft/teams-js";
const playlistsSource = require("./playlists.json");

export interface IPlaylistSelectorTaskModuleState extends ITeamsBaseComponentState {
  teamsTheme: ThemePrepared;
  playlistId?: string;
  playlistDisplayName?: string;
}

export interface IPlaylistSelectorTaskModuleProps {
}

export class PlaylistSelectorTaskModule extends TeamsBaseComponent<IPlaylistSelectorTaskModuleProps, IPlaylistSelectorTaskModuleState> {
  public componentWillMount(): void {
    this.updateComponentTheme(this.getQueryVariable("theme"));
    this.setState(Object.assign({}, this.state, {
        playlistId: this.getQueryVariable("playlistId"),
        playlistDisplayName: this.getQueryVariable("playlistDisplayName"),
    }));

    if (this.inTeams()) {
      microsoftTeams.initialize();
      microsoftTeams.registerOnThemeChangeHandler(this.updateComponentTheme);
    }
  }

  public render() {

    const playlists = playlistsSource.items.map(i => i.text);

    return (
        <Provider theme={this.state.teamsTheme}>
        <Flex column gap="gap.smaller">
          <Dropdown
            items={playlists}
            placeholder="Select the playlist"
            checkable
            onChange={this.handleOnChanged}
            getA11ySelectionMessage={{
              onAdd: item => `${item} has been selected.`,
            }}
          />
          <Button content="Update" primary onClick={this.handleOnClick}></Button>
        </Flex>
        </Provider>
    );
  }

  private handleOnChanged = (event: any, data: DropdownProps): void => {

    const selectedItem = playlistsSource.items.find(e => e.text === data.value);

    this.setState(Object.assign({}, this.state, {
      playlistDisplayName: data.value,
      playlistId: selectedItem.key
    }));
  }

  private handleOnClick = (event: React.MouseEvent<HTMLButtonElement>): void => {
    const result = {
      playlistId: this.state.playlistId,
      playlistDisplayName: this.state.playlistDisplayName
    };
    microsoftTeams.tasks.submitTask(result, undefined);
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
}
