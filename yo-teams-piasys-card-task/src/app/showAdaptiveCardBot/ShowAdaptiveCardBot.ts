import { BotDeclaration, MessageExtensionDeclaration } from "express-msteams-host";
import * as debug from "debug";
import { DialogSet, DialogState } from "botbuilder-dialogs";
import ShowAdaptiveCardMessageExtension from "../showAdaptiveCardMessageExtension/ShowAdaptiveCardMessageExtension";
import { StatePropertyAccessor, CardFactory, TurnContext, MemoryStorage, ConversationState, ActivityTypes, TeamsActivityHandler } from "botbuilder";



// Initialize debug logging module
const log = debug("msteams");

/**
 * Implementation for Show Adaptive Card Bot
 */
@BotDeclaration(
    "/api/messages",
    new MemoryStorage(),
    process.env.MICROSOFT_APP_ID,
    process.env.MICROSOFT_APP_PASSWORD)

export class ShowAdaptiveCardBot extends TeamsActivityHandler {
    private readonly conversationState: ConversationState;
    /** Local property for ShowAdaptiveCardMessageExtension */
    @MessageExtensionDeclaration("showAdaptiveCardMessageExtension")
    private _showAdaptiveCardMessageExtension: ShowAdaptiveCardMessageExtension;
    private readonly dialogs: DialogSet;
    private dialogState: StatePropertyAccessor<DialogState>;

    /**
     * The constructor
     * @param conversationState
     */
    public constructor(conversationState: ConversationState) {
        super();
        // Message extension ShowAdaptiveCardMessageExtension
        this._showAdaptiveCardMessageExtension = new ShowAdaptiveCardMessageExtension();


        this.conversationState = conversationState;
        this.dialogState = conversationState.createProperty("dialogState");
        this.dialogs = new DialogSet(this.dialogState);


    }


}
