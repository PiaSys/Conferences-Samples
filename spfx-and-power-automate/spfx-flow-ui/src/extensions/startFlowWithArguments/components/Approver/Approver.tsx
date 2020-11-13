import * as React from 'react';
import {
    Label,
    IconButton,
    IIconProps,
} from 'office-ui-fabric-react';

import { PeoplePicker, PrincipalType } from "@pnp/spfx-controls-react/lib/PeoplePicker";
import { IApproverProps } from './IApproverProps';
import { IApproverState } from './IApproverState';
import * as strings from 'StartFlowWithArgumentsCommandSetStrings';

const removeIcon: IIconProps = { iconName: 'UserRemove' };

export class Approver extends React.Component<IApproverProps, IApproverState> {

    constructor(props) {
        super(props);

        this.state = {
            approver: null
        };
    }

    public render(): JSX.Element {
        return (<div className='ms-Grid'>
            <div className='ms-Grid-row'>
                <div className='ms-Grid-col ms-sm12'>
                    <Label>{strings.ApproverLabel} - {this.props.index + 1}</Label>
                </div>
            </div>
            <div className='ms-Grid-row'>
                <div className='ms-Grid-col ms-sm10'>
                    <PeoplePicker
                        context={this.props.extensionContext}
                        personSelectionLimit={1}
                        required={true}
                        onChange={this.selectApprover}
                        principalTypes={[PrincipalType.User]}
                        resolveDelay={600}
                        disabled={false} />
                </div>
                <div className='ms-Grid-col ms-sm2'>
                    <IconButton
                        iconProps={removeIcon}
                        ariaLabel={strings.NewApproverArial}
                        onClick={ (i) => this.props.removeApprover(this.props.index) }
                    />
                </div>
            </div>
        </div>);
    }

    private selectApprover = async (items: any[]) => {
        if(items.length == 0) {
            this.setState({
                approver: null
            });

            this.props.selectApprover(this.props.index, null);
        }
        else {
            const email = this.getEmailFromPeoplePickerValue(items);

            this.setState({
                approver: email
            });

            this.props.selectApprover(this.props.index, email);
        }
    }

    private getEmailFromPeoplePickerValue(items: any[]) : string {
        const temp = items[0].id.split('|');
        const email = temp[temp.length - 1];

        return email;
    }
}