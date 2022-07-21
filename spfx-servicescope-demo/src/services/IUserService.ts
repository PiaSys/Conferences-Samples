/**
 * Sample utility service class interface definition
 */
export interface IUserService {
    /**
     * Provides the Base64 encoded avatar of a user
     * @param {string} upn - The UPN of the user
     * @returns The Base64 encoded avatar of the user
     */
    getBase64Avatar: (upn: string) => Promise<string>;
}