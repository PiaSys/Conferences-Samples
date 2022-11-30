import * as React from 'react';
import styles from './ShowMailboxStatus.module.scss';

import { IShowMailboxStatusProps } from './IShowMailboxStatusProps';
import { IShowMailboxStatusState } from './IShowMailboxStatusState';

class InboxResponse {
    unreadItemCount: number;
}

export default class ShowMailboxStatus extends React.Component<IShowMailboxStatusProps, IShowMailboxStatusState> {

    /**
     *
     */
    constructor(props: IShowMailboxStatusProps) {
        super(props);
        
        this.state = {
            loading: false,
            unreadEmails: 0,
            error: ''
        };
    }

    public componentDidMount(): void {
        // load data initially after the component has been instantiated
        this._loadMessages();
    }

    private _loadMessages(): void {

        if (!this.props.graphClient) {
            return;
        }

        this.setState({
            loading: true,
            unreadEmails: 0,
            error: ''
        });

        const graphURI: string = 'me/mailFolders/Inbox';

        this.props.graphClient
            .api(graphURI)
            .version('v1.0')
            .select('unreadItemCount')
            .get((err: any, res: InboxResponse): void => {
            if (err) {
                // Something failed calling the MS Graph
                this.setState({
                    error: err.message ? err.message : 'Generic error while retrieving unread messages!',
                    unreadEmails: 0,
                    loading: false
                });
                return;
            }

            // Check if a response was retrieved
            if (res) {
                this.setState({
                    error: '',
                    unreadEmails: res.unreadItemCount,
                    loading: false
                });
            }
            else {
                // No messages found
                this.setState({
                    error: '',
                    unreadEmails: 0,
                    loading: false
                });
            }
        });
    }

    public render(): React.ReactElement<IShowMailboxStatusProps> {

        const {
            loading,
            error,
            unreadEmails
        } = this.state;

        return <div className={styles.showMailboxStatusFooter}>
            <div className={styles.showMailboxStatusFooterContainer}>
                { loading ? <span>Loading ...</span> : null}
                { !loading && error.length === 0 ? <span>You have {unreadEmails} unread email messages in your <a href="https://outlook.office.com/mail/">inbox</a>.</span> : null }
                { !loading && error.length > 0 ? <span>Error {error}</span> : null }
            </div>
        </div>;
    }

}