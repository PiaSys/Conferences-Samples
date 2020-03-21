import * as React from 'react';
import styles from './UseTenantProperties.module.scss';
import { IUseTenantPropertiesProps } from './IUseTenantPropertiesProps';
import { IUseTenantPropertiesState } from './IUseTenantPropertiesState';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp, Web, IStorageEntity } from "@pnp/sp/presets/all";
import { TextField, PrimaryButton } from 'office-ui-fabric-react';

export default class UseTenantProperties extends React.Component<IUseTenantPropertiesProps, IUseTenantPropertiesState> {

  constructor(props: IUseTenantPropertiesProps) {
    super(props);
    
    this.state = {
      propertyName: '',
      propertyValue: '',
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private readStorageEntity = async () => {
    const prop: IStorageEntity = await sp.web.getStorageEntity(this.state.propertyName);
    this.setState({
      propertyValue: prop.Value
    });
  }

  private writeStorageEntity = async () => {
    const w = Web(this.props.appCatalogUrl);
    await w.setStorageEntity(this.state.propertyName, this.state.propertyValue);
  }

  private clearFields = async () => {
    this.setState({
      propertyName: '',
      propertyValue: '',
    });
  }

  private onTenantPropertyNameChanged = (event, newValue: string): void => {
    this.setState({
      propertyName: newValue
    });
  }

  private onTenantPropertyValueChanged = (event, newValue: string): void => {
    this.setState({
      propertyValue: newValue
    });
  }

  public render(): React.ReactElement<IUseTenantPropertiesProps> {
    return (
      <div className={ styles.useTenantProperties }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
  
              <p><TextField onChange={this.onTenantPropertyNameChanged} value={this.state.propertyName} /></p>
              <p><TextField onChange={this.onTenantPropertyValueChanged} value={this.state.propertyValue} /></p>
              <p><PrimaryButton text="Save value" onClick={this.writeStorageEntity} /></p>
              <p><PrimaryButton text="Read value" onClick={this.readStorageEntity} /></p>
              <p><PrimaryButton text="Clear" onClick={this.clearFields} /></p>

            </div>
          </div>
        </div>
      </div>
    );
  }
}
