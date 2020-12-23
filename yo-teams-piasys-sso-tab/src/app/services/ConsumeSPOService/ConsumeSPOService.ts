import { useDebugValue } from "react";
import { ISPOInformation } from "../../model/ISPOInformation";
import { IConsumeSPOService } from "./IConsumeSPOService";

export class ConsumeSPOService implements IConsumeSPOService {

    async getSPOInformation(token: string): Promise<ISPOInformation | undefined> {

        const functionUrl = `https://<function-url>.azurewebsites.net/api/ConsumeSPO?code=<function-key>`;

        console.log(functionUrl);

        let info: ISPOInformation | undefined = undefined;

        const response = await fetch (functionUrl, {
            method: 'GET',
            headers: {"accept": "application/json", "Authorization": `Bearer ${token}`}
        });
        if (response.ok) {
            info = await response.json();
            console.log(info);
        }

        return info;
    }
}