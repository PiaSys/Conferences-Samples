import { User } from "./User";

export interface IDemoService {
    getCurrentUserDataViaPnPjs(): Promise<User>;
    getCurrentUserDataViaPnPjsWithThrottlingHandler(): Promise<User>;
}