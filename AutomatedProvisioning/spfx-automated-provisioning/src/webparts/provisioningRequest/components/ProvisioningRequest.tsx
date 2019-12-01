import * as React from 'react';
import styles from './ProvisioningRequest.module.scss';
import { IProvisioningRequestProps } from './IProvisioningRequestProps';
import { IProvisioningRequestState } from './IProvisioningRequestState';
import { escape } from '@microsoft/sp-lodash-subset';
import * as strings from 'ProvisioningRequestWebPartStrings';

import { TextField, MaskedTextField } from 'office-ui-fabric-react/lib/TextField';
import { Dropdown, DropdownMenuItemType, IDropdownStyles, IDropdownOption } from 'office-ui-fabric-react/lib/Dropdown';
import { DefaultButton, PrimaryButton, Stack, IStackTokens } from 'office-ui-fabric-react';
import { PeoplePicker, PrincipalType } from "@pnp/spfx-controls-react/lib/PeoplePicker";
import { Placeholder } from "@pnp/spfx-controls-react/lib/Placeholder";
import { Dialog } from '@microsoft/sp-dialog';

import { Web, sp } from "@pnp/sp";

const dropdownStyles: Partial<IDropdownStyles> = {
  dropdown: { width: 300 }
};

export default class ProvisioningRequest extends React.Component<IProvisioningRequestProps, IProvisioningRequestState> {

  private siteTypes: IDropdownOption[] = [
    {
      key: 'Communication',
      text: 'Communication Site'
    },
    {
      key: 'Team',
      text: 'Team Site'
    },
  ];

  constructor(props: IProvisioningRequestProps) {
    super(props);
    
    this.state = {
      templates: []
    };
  }

  public componentDidMount() {
    this._getAvailableTemplates();
  }

  public componentWillReceiveProps(nextProps: IProvisioningRequestProps): void {
    if (this.props.requestsList !== nextProps.requestsList ||
      this.props.requestsSiteUrl !== nextProps.requestsSiteUrl ||
      this.props.templatesLibrary !== nextProps.templatesLibrary ||
      this.props.templatesSiteUrl !== nextProps.templatesSiteUrl) {
        this._getAvailableTemplates();
      }
  }

  public render(): React.ReactElement<IProvisioningRequestProps> {

    let contents: JSX.Element = null;
    if (!this.props.needsConfiguration) {
      contents = (
        <div className={ styles.provisioningRequest }>
          <div className={ styles.container }>
            <div className={ styles.row }>
              <div className={ styles.column }>
                <div className={ styles.description }>
                  { strings.WelcomeMessage }
                </div>
                <div className={ styles.formItem }>
                  <TextField label={ strings.SiteTitleLabel } 
                    placeholder={ strings.SiteTitlePlaceholder }
                    onChange={ this._siteTitleOnChange }
                    />
                </div>
                <div className={ styles.formItem }>
                  <PeoplePicker
                    context={this.props.context}
                    titleText={ strings.SiteOwnersLabel }
                    groupName=""
                    showtooltip={true}
                    isRequired={true}
                    personSelectionLimit={10}
                    disabled={false}
                    selectedItems={this._siteOwnersSelected}
                    showHiddenInUI={false}
                    principalTypes={[PrincipalType.User]}
                    resolveDelay={1000} />
                </div>
                <div className={ styles.formItem }>
                  <PeoplePicker
                    context={this.props.context}
                    titleText={ strings.SiteMembersLabel }
                    groupName=""
                    showtooltip={true}
                    isRequired={true}
                    personSelectionLimit={10}
                    disabled={false}
                    selectedItems={this._siteMembersSelected}
                    showHiddenInUI={false}
                    principalTypes={[PrincipalType.User]}
                    resolveDelay={1000}
                    />
                </div>
                <div className={ styles.formItem }>
                  <Dropdown placeholder={ strings.SiteTypePlaceholder } 
                    label={ strings.SiteTypeLabel } 
                    options={ this.siteTypes } 
                    styles={ dropdownStyles }
                    onChange={ this._siteTypeSelected }
                    />
                </div>
                <div className={ styles.formItem }>
                  <TextField label={ strings.TargetOrganizationLabel } 
                    placeholder={ strings.TargetOrganizationPlaceholder }
                    onChange={ this._targetOrganizationOnChange }
                    />
                </div>
                <div className={ styles.formItem }>
                  <Dropdown placeholder={ strings.SiteTemplatePlaceholder } 
                    label={ strings.SiteTemplateLabel } 
                    options={ this.state.templates } 
                    styles={ dropdownStyles }
                    onChange={ this._siteTemplateSelected }
                    />
                </div>
                <div className={ styles.formButton }>
                  <PrimaryButton text={ strings.SiteProvisionButtonText } onClick={ this._enqueueProvisioningRequest } allowDisabledFocus  />
                </div>
            </div>
          </div>
        </div>
      </div>
      );
    }

    // show the Placeholder control, if we are missing the real content, otherwise show the real content
    return (
      <div>
        {this.props.needsConfiguration &&
          <Placeholder
            iconName={strings.PlaceholderIconName}
            iconText={strings.PlaceholderIconText}
            description={strings.PlaceholderDescription}
            buttonLabel={strings.PlaceholderButtonLabel}
            onConfigure={this.props.configureHandler} />
        }
        {contents}
      </div>);
  }

  private _siteTitleOnChange = (event: any, newValue: string): void => {
    this.setState({
      siteTitle: newValue
    });
  }

  private _siteOwnersSelected = (items: any[]) => {

    const owners = [];

    items.forEach(async (u) => {
      const owner = await sp.web.ensureUser(u.id);
      owners.push(owner.data.Id);
    });

    this.setState({
      siteOwners: owners
    });
  }

  private _siteMembersSelected = (items: any[]) => {

    const members = [];

    items.forEach(async (u) => {
      const member = await sp.web.ensureUser(u.id);
      members.push(member.data.Id);
    });

    this.setState({
      siteMembers: members
    });
  }

  private _siteTypeSelected = (event: any, option: IDropdownOption, index?: number): void => {
    this.setState({
      siteType: option.key.toString()
    });
  }
  
  private _targetOrganizationOnChange = (event: any, newValue: string): void => {
    this.setState({
      targetOrganization: newValue
    });
  }

  private _siteTemplateSelected = (event: any, option: IDropdownOption, index?: number): void => {
    this.setState({
      siteTemplateUri: option.key.toString()
    });
  }

  private _getAvailableTemplates = (): void => {

    if (this.props.templatesSiteUrl && this.props.templatesLibrary) {
      const web = new Web(this.props.templatesSiteUrl);
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
      const web = new Web(this.props.requestsSiteUrl);
      const requestsList = web.lists.getById(this.props.requestsList);
      await requestsList.items.add({
        Title: this.state.siteTitle,
        ProvisioningOwnersId: { results: this.state.siteOwners },
        ProvisioningMembersId: { results: this.state.siteMembers },
        ProvisioningType: this.state.siteType,
        ProvisioningOrganization: this.state.targetOrganization,
        ProvisioningTemplate: this.state.siteTemplateUri,
      });

      Dialog.alert(`Request for Site "${this.state.siteTitle}" has been successfully submitted for approval!`);
    }
  }
}
