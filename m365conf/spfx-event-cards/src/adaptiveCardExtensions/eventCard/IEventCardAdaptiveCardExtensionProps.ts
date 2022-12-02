export interface IEventCardAdaptiveCardExtensionProps {
    title: string;
    addToUsersAgenda(id: string): Promise<boolean>;
}