import * as React from 'react';
import styles from './ReadMail.module.scss';
import { IReadMailProps } from '.';
import { IReadMailState } from '.';
import { IMessages, IMessage } from '.';
import { Spinner, SpinnerSize } from 'office-ui-fabric-react/lib/components/Spinner';
import { List } from 'office-ui-fabric-react/lib/components/List';
import { Link } from 'office-ui-fabric-react/lib/components/Link';

export default class ReadMail extends React.Component<IReadMailProps, IReadMailState> {

  constructor(props: IReadMailProps) {
    super(props);

    this.state = {
      messages: [],
      loading: false,
      error: undefined
    };
  }

  private _loadMessages(): void {
    if (!this.props.graphClient) {
      return;
    }

    // update state to indicate loading and remove any previously loaded
    // messages
    this.setState({
      error: null,
      loading: true,
      messages: []
    });

    this.props.graphClient
      .api("me/messages")
      .version("v1.0")
      .select("bodyPreview,receivedDateTime,from,subject,webLink")
      .top(10)
      .orderby("receivedDateTime desc")
      .get((err: any, res: IMessages): void => {
        if (err) {
          // Something failed calling the MS Graph
          this.setState({
            error: err.message ? err.message : "Error occurred!",
            loading: false
          });
          return;
        }

        // Check if a response was retrieved
        if (res && res.value && res.value.length > 0) {
          this.setState({
            messages: res.value,
            loading: false
          });
        }
        else {
          // No messages found
          this.setState({
            loading: false
          });
        }
      });
  }

  public componentDidMount(): void {
    this._loadMessages();
  }

  private _onRenderCell = (item: IMessage, index: number | undefined): JSX.Element => {
    return <Link href={item.webLink} className={styles.message} target='_blank'>
        <div className={styles.from}>{item.from.emailAddress.name || item.from.emailAddress.address}</div>
        <div className={styles.subject}>{item.subject}</div>
        <div className={styles.date}>{(new Date(item.receivedDateTime).toLocaleDateString())}</div>
        <div className={styles.preview}>{item.bodyPreview}</div>
      </Link>;
  }

  public render(): React.ReactElement<IReadMailProps> {
    return (
      <div className={styles.readMail}>
        {
          this.state.loading &&
          <Spinner label="Loading ..." size={SpinnerSize.large} />
        }

        {
          this.state.messages &&
            this.state.messages.length > 0 ? (
              <div>
                <List items={this.state.messages}
                  onRenderCell={this._onRenderCell} className={styles.list} />
              </div>
            ) : (
              !this.state.loading && (
                this.state.error ?
                  <span className={styles.error}>{this.state.error}</span> :
                  <span className={styles.noMessages}>No messages</span>
              )
            )
        }
      </div>
    );
  }
}
