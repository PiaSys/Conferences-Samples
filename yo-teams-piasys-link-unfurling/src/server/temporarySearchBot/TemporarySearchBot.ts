import { BotDeclaration, MessageExtensionDeclaration } from "express-msteams-host";
import * as debug from "debug";
import { DialogSet, DialogState } from "botbuilder-dialogs";
import TemporarySearchMessageExtension from "../temporarySearchMessageExtension/TemporarySearchMessageExtension";
import { StatePropertyAccessor, CardFactory, TurnContext, MemoryStorage, ConversationState, ActivityTypes, TeamsActivityHandler } from "botbuilder";
// Initialize debug logging module
const log = debug("msteams");

/**
 * Implementation for TemporarySearch Bot
 */
@BotDeclaration(
    "/api/messages",
    new MemoryStorage(),
    // eslint-disable-next-line no-undef
    process.env.MICROSOFT_APP_ID,
    // eslint-disable-next-line no-undef
    process.env.MICROSOFT_APP_PASSWORD)

export class TemporarySearchBot extends TeamsActivityHandler {
    private readonly conversationState: ConversationState;
    /** Local property for TemporarySearchMessageExtension */
    @MessageExtensionDeclaration("temporarySearchMessageExtension")
    private _temporarySearchMessageExtension: TemporarySearchMessageExtension;

    private readonly dialogs: DialogSet;
    private dialogState: StatePropertyAccessor<DialogState>;

    /**
     * The constructor
     * @param conversationState
     */
    public constructor(conversationState: ConversationState) {
        super();
        // Message extension TemporarySearchMessageExtension
        this._temporarySearchMessageExtension = new TemporarySearchMessageExtension();

        this.conversationState = conversationState;
        this.dialogState = conversationState.createProperty("dialogState");
        this.dialogs = new DialogSet(this.dialogState);

    }

}
