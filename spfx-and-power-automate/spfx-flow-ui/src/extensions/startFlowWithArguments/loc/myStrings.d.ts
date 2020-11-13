declare interface IStartFlowWithArgumentsCommandSetStrings {
  ApproverLabel: string;
  NewApproverArial: string;
  FlowDueDateLabel: string;
  DialogCancel: string;
  DialogOk: string;
  DialogTitle: string;  
}

declare module 'StartFlowWithArgumentsCommandSetStrings' {
  const strings: IStartFlowWithArgumentsCommandSetStrings;
  export = strings;
}
