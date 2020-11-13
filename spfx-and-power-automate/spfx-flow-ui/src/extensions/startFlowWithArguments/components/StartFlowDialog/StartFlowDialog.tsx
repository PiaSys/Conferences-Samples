import * as React from 'react';
import * as ReactDOM from 'react-dom';
import { BaseDialog, IDialogConfiguration } from '@microsoft/sp-dialog';
import { StartFlowDialogContent } from '../StartFlowDialogContent/StartFlowDialogContent';
import { StartFlowDialogResult } from '../Model';
import { ExtensionContext } from '@microsoft/sp-extension-base';

export class StartFlowDialog extends BaseDialog {
    private extensionContext: ExtensionContext;
    public dialogResult: StartFlowDialogResult;

    constructor(extensionContext: ExtensionContext) {
        super();

        this.extensionContext = extensionContext;
    }

    public render(): void {
        ReactDOM.render(<StartFlowDialogContent
            close={this.closeDialog}
            submit={this.submit}
            extensionContext={this.extensionContext}
        />, this.domElement);
    }

    public getConfig(): IDialogConfiguration {
        return {
            isBlocking: false
        };
    }

    private clear() {
        this.extensionContext = undefined;

        ReactDOM.unmountComponentAtNode(this.domElement);
    }

    private closeDialog = (): void => {
        this.clear();
        this.close();
    }

    private submit = (result: StartFlowDialogResult): void => {
        this.dialogResult = result;

        this.clear();
        this.close();
    }
}