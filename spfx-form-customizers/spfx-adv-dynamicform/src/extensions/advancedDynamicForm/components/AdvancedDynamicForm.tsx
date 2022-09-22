import * as React from 'react';
import { Log, FormDisplayMode } from '@microsoft/sp-core-library';
import { FormCustomizerContext } from '@microsoft/sp-listview-extensibility';

import styles from './AdvancedDynamicForm.module.scss';

import { DynamicForm } from "@pnp/spfx-controls-react/lib/DynamicForm";
import { IDynamicFieldProps } from '@pnp/spfx-controls-react/lib/controls/dynamicForm/dynamicField';
import { Icon } from 'office-ui-fabric-react/lib/Icon';
import { PeoplePicker, PrincipalType } from '@pnp/spfx-controls-react/lib/controls/peoplepicker';

export interface IAdvancedDynamicFormProps {
  context: FormCustomizerContext;
  displayMode: FormDisplayMode;
  onSave: () => void;
  onClose: () => void;
}

const LOG_SOURCE: string = 'AdvancedDynamicForm';

export default class AdvancedDynamicForm extends React.Component<IAdvancedDynamicFormProps, {}> {

  public componentDidMount(): void {
    Log.info(LOG_SOURCE, 'React Element: AdvancedDynamicForm mounted');
  }

  public componentWillUnmount(): void {
    Log.info(LOG_SOURCE, 'React Element: AdvancedDynamicForm unmounted');
  }

  public render(): React.ReactElement<{}> {

    const fieldOvverides: {[columnInternalName: string] : {(fieldProperties: IDynamicFieldProps): React.ReactElement<IDynamicFieldProps>}} = {
      Assignedto: this._renderAssignedTo
    };
    
    return <div className={styles.advancedDynamicForm}>
      <DynamicForm 
        context={this.props.context as any} 
        listId={this.props.context.list.guid.toString()}  
        listItemId={this.props.context.itemId}
        onCancelled={this.props.onClose}
        onBeforeSubmit={async (listItem) => { return false; }}
        onSubmitError={(listItem, error) => { alert(error.message); }}
        onSubmitted={this.props.onSave}
        disabledFields={["IssueSource"]}
        hiddenFields={["Priority","Status"]}
        fieldOverrides={fieldOvverides}                
        />
    </div>;
  }

  private _renderAssignedTo = (fieldProperties: IDynamicFieldProps): React.ReactElement<IDynamicFieldProps> => {

    console.log(fieldProperties);

    const {
      columnInternalName,
      description,
      required,
      label,
      fieldTitle,
      placeholder,
      fieldDefaultValue,
      principalType,
      disabled,
      context,
      onChanged
    } = fieldProperties;

    const defaultValue = fieldDefaultValue;
    const labelText = fieldTitle !== null ? fieldTitle : label;

    return <div>
      <div className={styles.titleContainer}>
        <Icon className={styles.fieldIcon} iconName={"Contact"} />
        <label className={(required) ? styles.fieldRequired + ' ' + styles.fieldLabel : styles.fieldLabel}>Custom {labelText}</label>;
      </div>

      <PeoplePicker
            placeholder={placeholder}
            defaultSelectedUsers={defaultValue}
            peoplePickerCntrlclassName={styles.fieldDisplay}
            context={context}
            personSelectionLimit={1}
            showtooltip={false}
            showHiddenInUI={false}
            principalTypes={principalType === 'PeopleOnly' ? [PrincipalType.User] : [PrincipalType.User, PrincipalType.SharePointGroup, PrincipalType.DistributionList, PrincipalType.SecurityGroup]}
            resolveDelay={1000}
            onChange={(items) => { onChanged(columnInternalName, items); }}
            disabled={disabled}            
            webAbsoluteUrl={this.props.context.pageContext.web.absoluteUrl}
          />
      <text className={styles.fieldDescription}>{description}</text>
    </div>;
  }
}
