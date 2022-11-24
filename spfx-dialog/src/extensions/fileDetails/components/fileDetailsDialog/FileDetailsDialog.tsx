import * as React from 'react';
import * as ReactDOM from 'react-dom';
import { BaseDialog, IDialogConfiguration } from '@microsoft/sp-dialog';
import * as strings from 'FileDetailsDialogCommandSetStrings';
import styles from './FileDetailsDialogs.module.scss';

import {
    DefaultButton,
    PrimaryButton,
    DialogFooter,
    DialogContent,
    TextField,
    Label
} from 'office-ui-fabric-react';

import { IFileDetailsDialogContentProps } from './IFileDetailsDialogContentProps';
import { IFileDetailsDialogContentState } from './IFileDetailsDialogContentState';
import { ListViewCommandSetContext } from '@microsoft/sp-listview-extensibility';
import { IFileItem } from '../../types';

class FileDetailsDialogContent extends
  React.Component<IFileDetailsDialogContentProps, IFileDetailsDialogContentState> {

    /**
     *
     */
    public constructor(props: IFileDetailsDialogContentProps) {
        super(props);
        
        this.state = {
            text: '',
            enableSubmit: false
        };
    }

    public render(): JSX.Element {

        const {
            cancel,
            items,
            doSomething
        } = this.props;

        const {
            text,
            enableSubmit          
        } = this.state;

        return (<div className={styles.fileDetailsDialogRoot}>
            <DialogContent
            title={strings.FileDetailsDialog.Title}
            subText={strings.FileDetailsDialog.SubTitle}
            onDismiss={cancel}>

            <div className={styles.fileDetailsDialogContent}>
                <div className="ms-Grid">
                    <div className={`ms-Grid-row ${styles.rowSpacing}`}>
                        <div className="ms-Grid-col ms-sm12 ms-md12 ms-lg12">
                            <ul>
                                { items.map(i => <li key={i.itemId}>{i.name}</li>) }
                            </ul>
                        </div>
                    </div>
                    <div className={`ms-Grid-row ${styles.rowSpacing}`}>
                        <div className="ms-Grid-col ms-sm12 ms-md12 ms-lg12">
                            <Label>{strings.FileDetailsDialog.TextLabel}</Label>
                            <TextField value={text} required={true}
                                onChange={this._onTextChanged} />
                        </div>
                    </div>
                </div>
            </div>
            <DialogFooter>
                <DefaultButton text={strings.FileDetailsDialog.CancelButton}
                        title={strings.FileDetailsDialog.CancelButton} onClick={cancel} />
                <PrimaryButton text={strings.FileDetailsDialog.ConfirmButton} disabled={!enableSubmit}
                    title={strings.FileDetailsDialog.ConfirmButton} onClick={async () => { 
                        await doSomething(items, text); 
                    }} />
            </DialogFooter>
        </DialogContent>
    </div>);
    }

    private _onTextChanged = (event: React.FormEvent<HTMLInputElement | HTMLTextAreaElement>, newValue?: string): void => {
        this.setState({
            text: newValue,
            enableSubmit: newValue && newValue.length > 0 
        });
    }
}

export default class FileDetailsDialog extends BaseDialog {

    public context: ListViewCommandSetContext; 
    public items: IFileItem[];
    public cancel: () => Promise<void>;
    public doSomething: (items: IFileItem[], text: string) => Promise<void>;

    /**
     * Constructor to initialize fundamental properties
     */
    public constructor() {
        super();        
    }

    public render(): void {
        ReactDOM.render(<FileDetailsDialogContent
            items={ this.items }
            cancel={ this._cancel }
            doSomething={ this._doSomething }
        />, this.domElement);
    }

    public getConfig(): IDialogConfiguration {
        return {
            isBlocking: false
        };
    }

    private _cancel = async (): Promise<void> => {
        await this.close();
        await this.cancel();
        return;   
    }

    private _doSomething = async (items: IFileItem[], text: string): Promise<void> => {
        await this.close();
        await this.doSomething(items, text);
        return;   
    }

    protected onAfterClose(): void {
        super.onAfterClose();

        // Clean up the element for the next dialog
        ReactDOM.unmountComponentAtNode(this.domElement);
    }
}