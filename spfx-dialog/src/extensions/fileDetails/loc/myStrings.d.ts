declare interface IFileDetailsCommandSetStrings {
  Command1: string;
  Command2: string;
}

declare module 'FileDetailsCommandSetStrings' {
  const strings: IFileDetailsCommandSetStrings;
  export = strings;
}
