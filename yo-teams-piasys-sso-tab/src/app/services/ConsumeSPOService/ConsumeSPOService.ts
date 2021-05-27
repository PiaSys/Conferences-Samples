import { useDebugValue } from "react";
import { ISPOInformation } from "../../model/ISPOInformation";
import { IConsumeSPOService } from "./IConsumeSPOService";

export class ConsumeSPOService implements IConsumeSPOService {

    async getSPOInformation(token: string): Promise<ISPOInformation | undefined> {

        const functionUrl = `https://piasys-yoteams-sso-backend.azurewebsites.net/api/ConsumeSPO?code=PP6YLdfKxdMgkyHaaoQbW7XFMAQG5v5n9yzS7/BLzG8Cr8MNEpdJ/w==`;

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