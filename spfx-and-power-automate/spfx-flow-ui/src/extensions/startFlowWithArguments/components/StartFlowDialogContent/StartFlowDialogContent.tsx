import * as React from 'react';
import {
    PrimaryButton,
    DialogFooter,
    DefaultButton,
    DialogContent,
    Spinner,
    SpinnerSize,
    Label,
    DatePicker,
    IconButton,
    IIconProps,
} from 'office-ui-fabric-react';

import { IStartFlowDialogContentProps } from './IStartFlowDialogContentProps';
import { IStartFlowDialogContentState } from './IStartFlowDialogContentState';
import * as strings from 'StartFlowWithArgumentsCommandSetStrings';
import { IUserItem, StartFlowDialogResult } from '../Model';
import { Approver } from '../Approver';
import { Guid } from '@microsoft/sp-core-library';

const addIcon: IIconProps = { iconName: 'AddFriend' };

export class StartFlowDialogContent extends React.Component<IStartFlowDialogContentProps, IStartFlowDialogContentState> {

    constructor(props) {
        super(props);

        this.state = {
            isLoading: false,
            dialogResult: {
                approvers: [{ id: Guid.newGuid().toString(), email: '' }],
                flowDueDate: undefined
            }
        };
    }

    public render(): JSX.Element {
        var getDialogContent = () => {
            if (this.state.isLoading) {
                return (
                    <Spinner size={SpinnerSize.large} label="loading..." ariaLive="assertive" />
                );
            }
            else {
                return (
                    <div>
                        <div>
                            { this.state.dialogResult.approvers.map((a, i) => 
                                <Approver
                                    extensionContext={this.props.extensionContext}
                                    index={i}
                                    key={a.id}
                                    removeApprover={this.removeApprover}
                                    selectApprover={this.selectApprover}
                                />
                            ) }
                        </div>
                        <div>
                            <IconButton
                                iconProps={addIcon}
                                ariaLabel={strings.NewApproverArial}
                                onClick={this.addNewApprover}
                            />
                        </div>
                        <div>
                            <Label>{strings.FlowDueDateLabel}</Label>
                            <DatePicker 
                                value={this.state.dialogResult.flowDueDate}
                                onSelectDate={this.onSelectFlowDueDate}
                                isRequired={false}
                                allowTextInput={true}
                                disableAutoFocus={true} />
                        </div>

                        <DialogFooter>
                            <DefaultButton text={strings.DialogCancel} title={strings.DialogCancel} onClick={this.props.close} />
                            <PrimaryButton text={strings.DialogOk} title={strings.DialogOk} onClick={this.submit} disabled={!this.isSubmitEnabled()} />
                        </DialogFooter>
                    </div>);
            }
        };
        
        return <DialogContent
            title={strings.DialogTitle}
            subText=''
            onDismiss={this.props.close}
            showCloseButton={true}>
                {getDialogContent()}
        </DialogContent>;
    }

    private addNewApprover = (): void => {

        console.log(`AddNewApprover`);

        var tempApprovers = this.state.dialogResult.approvers;
        console.log(tempApprovers);
        tempApprovers.push({ id: Guid.newGuid().toString(), email: '' });
        console.log(tempApprovers);

        this.setState({
            dialogResult: {
                ...this.state.dialogResult,
                approvers: tempApprovers
            }
        });
    }

    private removeApprover = (index: number): void => {

        console.log(`RemoveApprover: ${index}`);

        var tempApprovers = this.state.dialogResult.approvers;
        console.log(tempApprovers);
        tempApprovers.splice(index, 1);
        console.log(tempApprovers);

        this.setState({
            dialogResult: {
                ...this.state.dialogResult,
                approvers: tempApprovers
            }
        });
    }

    private selectApprover = (index: number, item: string): void => {

        console.log(`SelectApprover: ${index} - ${item}`);

        var tempApprovers = this.state.dialogResult.approvers;
        console.log(tempApprovers);
        tempApprovers[index].email = item;
        console.log(tempApprovers);

        this.setState({
            dialogResult: {
                ...this.state.dialogResult,
                approvers: tempApprovers
            }
        });
    }

    private isSubmitEnabled = () => {
        return this.state.dialogResult
        && (this.state.dialogResult.approvers)
        && (this.state.dialogResult.approvers.length > 0);
    }

    private onSelectFlowDueDate = (date: Date | null | undefined): void => {
        this.setState({
            dialogResult: {
                ...this.state.dialogResult,
                flowDueDate: date
            }
        });
    }

    private submit = (): void => {
        this.setState({ isLoading: true });
        this.props.submit(this.state.dialogResult);
    }
}