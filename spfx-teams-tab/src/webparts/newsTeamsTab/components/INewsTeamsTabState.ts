export interface INewsTeamsTabState {
  news: INewsItem[];
  error: string;
  loading: boolean;
}

export interface INewsItem {
  title: string;
  description: string;
}
