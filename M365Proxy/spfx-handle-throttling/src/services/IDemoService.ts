import { User } from "./User";

export interface IDemoService {

    getCurrentUserDataViaSPFx(): Promise<User>;
    getCurrentUserDataViaSPFxWithThrottlingHandler(): Promise<User>;

    getCurrentUserDataViaPnPjs(): Promise<User>;
    getCurrentUserDataViaPnPjsWithThrottlingHandler(): Promise<User>;
}