import { IList } from "./IList";

/**
 * Defines the abstract interface for the Lists Service
 */
export interface IListsService {

    /**
     * Returns the whole list of lists in the current site
     * @returns The whole list of lists
     */
    GetLists: () => Promise<IList[]>;
 }