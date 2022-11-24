import { IFileItem } from '../../types';

export interface IFileDetailsDialogContentProps {
    items: IFileItem[];
    cancel: () => Promise<void>;
    doSomething: (items: IFileItem[], text: string) => Promise<void>;
}