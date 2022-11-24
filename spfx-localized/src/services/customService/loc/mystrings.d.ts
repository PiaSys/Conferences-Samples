declare interface ICustomServiceStrings {
  GroupOne: {
    PropertyOne: string;
    PropertyTwo: string;
  };
  GroupTwo: {
    PropertyOne: string;
    PropertyTwo: string;
  };
}

declare module 'CustomServiceStrings' {
  const strings: ICustomServiceStrings;
  export = strings;
}
