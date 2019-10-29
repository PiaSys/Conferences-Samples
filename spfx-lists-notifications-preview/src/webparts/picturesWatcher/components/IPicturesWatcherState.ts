export interface IPicturesWatcherState {
  pictures: IPicture[];
  loading: boolean;
}

export interface IPicture {
  title: string;
  serverRelativeUrl: string;
}