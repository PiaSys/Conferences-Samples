import { ExtensionContext } from "@microsoft/sp-extension-base";
import { StartFlowDialogResult } from "../Model";

export interface IStartFlowDialogContentProps {
    close: () => void;
    submit: (result: StartFlowDialogResult) => void;
    extensionContext: ExtensionContext;
}