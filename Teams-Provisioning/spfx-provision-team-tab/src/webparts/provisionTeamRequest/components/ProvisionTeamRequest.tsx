import * as React from 'react';
import styles from './ProvisionTeamRequest.module.scss';
import { IProvisionTeamRequestState } from './IProvisionTeamRequestState';
import { IProvisionTeamRequestProps } from './IProvisionTeamRequestProps';
import { escape } from '@microsoft/sp-lodash-subset';
import * as strings from 'ProvisionTeamRequestWebPartStrings';

import { TextField, MaskedTextField } from 'office-ui-fabric-react/lib/TextField';
import { Dropdown, DropdownMenuItemType, IDropdownStyles, IDropdownOption } from 'office-ui-fabric-react/lib/Dropdown';
import { DefaultButton, PrimaryButton, Stack, IStackTokens } from 'office-ui-fabric-react';
import { PeoplePicker, PrincipalType } from "@pnp/spfx-controls-react/lib/PeoplePicker";
import { Dialog } from '@microsoft/sp-dialog';

import { sp } from "@pnp/sp";
import { Web, IWeb } from "@pnp/sp/webs";
import { IItemAddResult } from "@pnp/sp/items";
import "@pnp/sp/webs";
import "@pnp/sp/site-users";
import "@pnp/sp/lists";
import "@pnp/sp/items";
import { string } from 'prop-types';

const dropdownStyles: Partial<IDropdownStyles> = {
  dropdown: { width: 300 }
};

export default class ProvisionTeamRequest extends React.Component<IProvisionTeamRequestProps, IProvisionTeamRequestState> {

  constructor(props: IProvisionTeamRequestProps) {
    super(props);
    
    this.state = {
      templates: []
    };
  }

  public componentDidMount() {
    this._getAvailableTemplates();
  }

  public componentWillReceiveProps(nextProps: IProvisionTeamRequestProps): void {
    if (this.props.requestsList !== nextProps.requestsList ||
      this.props.requestsSiteUrl !== nextProps.requestsSiteUrl ||
      this.props.templatesLibrary !== nextProps.templatesLibrary ||
      this.props.templatesSiteUrl !== nextProps.templatesSiteUrl) {
        this._getAvailableTemplates();
      }
  }

  private _teamTitleOnChange = (event: any, newValue: string): void => {
    this.setState({
      teamTitle: newValue      
    });
  }

  private _teamAliasOnChange = (event: any, newValue: string): void => {
    this.setState({
      teamAlias: newValue
    });
  }

  private _teamOwnersSelected = (items: any[]) => {

    const owners = [];
    const web: IWeb = Web(this.props.requestsSiteUrl);

    items.forEach(async (u) => {
      console.log(u.id);

      const owner = await web.ensureUser(u.id);
      owners.push(owner.data.LoginName);

      console.log(owner.data.LoginName);
    });

    this.setState({
      teamOwners: owners
    });
  }

  private _teamMembersSelected = (items: any[]) => {

    const members = [];
    const web: IWeb = Web(this.props.requestsSiteUrl);

    items.forEach(async (u) => {
      console.log(u.id);

      const member = await web.ensureUser(u.id);
      members.push(member.data.LoginName);

      console.log(member.data.LoginName);
    });

    this.setState({
      teamMembers: members
    });
  }

  private _teamTemplateSelected = (event: any, option: IDropdownOption, index?: number): void => {
    this.setState({
      teamTemplateUri: option.key.toString()
    });
  }

  private isFormValid = (): boolean => {
    return(
      (this.state.teamOwners != null && this.state.teamOwners.length > 0) &&
      (this.state.teamTitle != null && this.state.teamTitle.length > 0) &&
      (this.state.teamAlias != null && this.state.teamAlias.length > 0) &&
      (this.state.teamTemplateUri != null && this.state.teamTemplateUri != 'NO_ITEM_SELECTED'));
  }

  private _getAvailableTemplates = (): void => {

    if (this.props.templatesSiteUrl && this.props.templatesLibrary) {
      const web: IWeb = Web(this.props.templatesSiteUrl);
      const templatesLibrary = web.lists.getById(this.props.templatesLibrary);
      templatesLibrary.items.select("ID", "File", "Title").expand("File").getAll().then((templates) => {

        let options: IDropdownOption[] = [];

        options = templates.map(t => ({
          key: t.File.ServerRelativeUrl,
          text: t.Title
        }));

        options.unshift({
          key: 'NO_ITEM_SELECTED',
          text: ''
        });

        this.setState({
          templates: options
        });
      });
    }
  }

  private _enqueueProvisioningRequest = async () => {

    if (this.props.requestsSiteUrl && this.props.requestsList) {
      const web: IWeb = Web(this.props.requestsSiteUrl);
      const requestsList = web.lists.getById(this.props.requestsList);
      const newRequest = {
        Title: this.state.teamTitle,
        PiaSysTeamAlias: this.state.teamAlias.replace(' ', '-').toLowerCase(),
        PiaSysTeamTemplateUri: this.state.teamTemplateUri,
      };
      const addedRequest: IItemAddResult = await requestsList.items.add(newRequest);

      // Update the user fields
      await requestsList.items.getById(addedRequest.data.Id).validateUpdateListItem([
        {
          FieldName: 'PiaSysTeamOwners',
          FieldValue: JSON.stringify(this.state.teamOwners.map(i => { return({ Key: i }); }))
        }
      ]);

      if (this.state.teamMembers != null && this.state.teamMembers.length > 0)
      {
        await requestsList.items.getById(addedRequest.data.Id).validateUpdateListItem([
          {
            FieldName: 'PiaSysTeamMembers',
            FieldValue: JSON.stringify(this.state.teamMembers.map(i => { return({ Key: i }); }))
          }
        ]);
      }

      Dialog.alert(`Request for Team "${this.state.teamTitle}" has been successfully submitted for approval!`);
    }
  }

  public render(): React.ReactElement<IProvisionTeamRequestProps> {

    const isValid: boolean = this.isFormValid();

    return (
      <div className={ styles.provisionTeamRequest }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <div className={ styles.description }>
                { strings.WelcomeMessage }
              </div>
              <div className={ styles.formItem }>
                <TextField label={ strings.TeamTitleLabel } 
                  placeholder={ strings.TeamTitlePlaceholder }
                  onChange={ this._teamTitleOnChange }
                   />
              </div>
              <div className={ styles.formItem }>
                <TextField label={ strings.TeamAliasLabel } 
                  placeholder={ strings.TeamAliasPlaceholder } 
                  onChange={ this._teamAliasOnChange }
                  />
              </div>
              <div className={ styles.formItem }>
                <PeoplePicker
                  context={this.props.context}
                  titleText={ strings.TeamOwnersLabel }
                  groupName=""
                  showtooltip={true}
                  required={true}
                  personSelectionLimit={10}
                  disabled={false}
                  onChange={this._teamOwnersSelected}
                  showHiddenInUI={false}
                  principalTypes={[PrincipalType.User]}
                  resolveDelay={1000} />
              </div>
              <div className={ styles.formItem }>
              <PeoplePicker
                  context={this.props.context}
                  titleText={ strings.TeamMembersLabel }
                  groupName=""
                  showtooltip={true}
                  required={true}
                  personSelectionLimit={10}
                  disabled={false}
                  onChange={this._teamMembersSelected}
                  showHiddenInUI={false}
                  principalTypes={[PrincipalType.User]}
                  resolveDelay={1000}
                  />
              </div>
              <div className={ styles.formItem }>
                <Dropdown placeholder={ strings.TeamTemplatePlaceholder } 
                  label={ strings.TeamTemplateLabel } 
                  options={ this.state.templates } 
                  styles={ dropdownStyles }
                  onChange={ this._teamTemplateSelected }
                  />
              </div>
              <div className={ styles.formButton }>
                <PrimaryButton disabled={!isValid} text={ strings.TeamProvisionButtonText } onClick={ this._enqueueProvisioningRequest } allowDisabledFocus />
              </div>
          </div>
          </div>
        </div>
      </div>
    );

  }
}
