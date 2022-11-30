declare interface IFileDetailsDialogCommandSetStrings {
  General: {
    Title: string;
  },
  FileDetailsDialog: {
    Title: string;
    SubTitle: string;
    TextLabel: string;
    CancelButton: string;
    ConfirmButton: string;
  }
}

declare module 'FileDetailsDialogCommandSetStrings' {
  const strings: IFileDetailsDialogCommandSetStrings;
  export = strings;
}
