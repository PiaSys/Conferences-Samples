// Import the reference interface for the service
import { IUserService } from "./IUserService";

// Import types for ServiceScope logic
import { ServiceKey, ServiceScope } from "@microsoft/sp-core-library";

// Import types for MS Graph consumption
import { AadHttpClientFactory, AadHttpClient, HttpClientResponse } from '@microsoft/sp-http';

export class UserService implements IUserService {

    // This private instance will be initialized via the ServiceScope
    private _aadHttpClientFactory: AadHttpClientFactory;

    // ServiceKey for our custom service
    public static readonly serviceKey: ServiceKey<IUserService> = 
        ServiceKey.create<IUserService>('PiaSys:UserService', UserService);

    /**
     * Constructs a new instance of the UserService
     * @param {ServiceScope} serviceScope - The ServiceScope instance 
     */
    public constructor(serviceScope: ServiceScope) {

        // Initialized the PnPjs framework for SPFx
        serviceScope.whenFinished(() => {
            this._aadHttpClientFactory = serviceScope.consume(AadHttpClientFactory.serviceKey);
        });
    }

    /**
     * Provides the Base64 encoded avatar of a user
     * @param {string} upn - The UPN of the user
     * @returns The Base64 encoded avatar of the user
     */
    public async getBase64Avatar(upn: string): Promise<string> {

        let photo: string = null;
        try {
            const aadClient: AadHttpClient = await this._aadHttpClientFactory.getClient("https://graph.microsoft.com/");
            const photoResponse: HttpClientResponse = await aadClient.get(
                `https://graph.microsoft.com/v1.0/users/${upn}/photo/$value`,
                AadHttpClient.configurations.v1
            );

            // If the response was ok, we can convert the blob to base64
            if (photoResponse.ok) {
                photo = await this._blobToBase64(await photoResponse.blob());
            }

        } catch (ex: any) {
            console.log(ex);
        }

        return photo;
    }

    private async _blobToBase64(blob: Blob): Promise<string> {
        return new Promise((resolve, reject) => {
          const reader: FileReader = new FileReader();
          reader.onerror = reject;
          reader.onload = x => {
            resolve(reader.result as string);
          };
          reader.readAsDataURL(blob);
        });
    }
}
