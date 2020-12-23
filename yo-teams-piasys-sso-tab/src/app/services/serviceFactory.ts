import { IConsumeSPOService } from './ConsumeSPOService/IConsumeSPOService';
import { ConsumeSPOService } from './ConsumeSPOService/ConsumeSPOService';

export class ServiceFactory {

    public static getConsumeSPOService(): IConsumeSPOService {
        return new ConsumeSPOService();
    }
}