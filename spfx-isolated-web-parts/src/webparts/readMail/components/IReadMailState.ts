import { IMessage } from '.';

export interface IReadMailState {
  error: string;
  loading: boolean;
  messages: IMessage[];
}