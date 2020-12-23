import { PreventIframe } from "express-msteams-host";

/**
 * Used as place holder for the decorators
 */
@PreventIframe("/piaSysTabSsoTab/index.html")
@PreventIframe("/piaSysTabSsoTab/config.html")
@PreventIframe("/piaSysTabSsoTab/remove.html")
export class PiaSysTabSsoTab {
}
