import { ExtensionContext } from "@microsoft/sp-extension-base";

export interface IApproverProps {
    index: number;
    removeApprover: (index: number) => void;
    selectApprover: (index: number, item: string) => void;
    extensionContext: ExtensionContext;
}