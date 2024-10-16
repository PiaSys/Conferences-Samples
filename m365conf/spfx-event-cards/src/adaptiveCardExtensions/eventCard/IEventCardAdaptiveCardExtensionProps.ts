export interface IEventCardAdaptiveCardExtensionProps {
    title: string;
    groupId: string;
    addToUsersAgenda(id: string): Promise<boolean>;
}