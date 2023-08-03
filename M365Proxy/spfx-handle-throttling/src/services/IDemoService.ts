import { User } from "./User";

export interface IDemoService {
    getCurrentUserData(): Promise<User>;
    getCurrentUserDataWithThrottlingHandler(): Promise<User>;
}