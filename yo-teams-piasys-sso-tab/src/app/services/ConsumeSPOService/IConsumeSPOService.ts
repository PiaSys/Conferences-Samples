import { ISPOInformation } from "../../model/ISPOInformation";

export interface IConsumeSPOService {
    getSPOInformation(token: string): Promise<ISPOInformation | undefined>
}