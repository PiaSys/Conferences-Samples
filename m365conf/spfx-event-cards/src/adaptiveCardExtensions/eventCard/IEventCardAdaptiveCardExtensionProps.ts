export interface IEventCardAdaptiveCardExtensionProps {
    title: string;
    groupId: string;
    siteUrl: string;
    addToUsersAgenda(id: string): Promise<boolean>;
}