import { IUserItem } from "./IUserItem";

export interface StartFlowDialogResult {
    approvers: IUserItem[];
    flowDueDate: Date;
}