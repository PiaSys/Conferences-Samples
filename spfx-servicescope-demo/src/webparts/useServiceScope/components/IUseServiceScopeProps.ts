import { IUserService } from "../../../services/IUserService";

export interface IUseServiceScopeProps {
  hasTeamsContext: boolean;
  upn: string;
  userService: IUserService;
}
