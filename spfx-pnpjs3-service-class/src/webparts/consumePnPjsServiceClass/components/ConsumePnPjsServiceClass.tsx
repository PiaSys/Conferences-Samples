import * as React from 'react';
import styles from './ConsumePnPjsServiceClass.module.scss';
import { IConsumePnPjsServiceClassProps } from './IConsumePnPjsServiceClassProps';
import { escape } from '@microsoft/sp-lodash-subset';
import { IList } from '../../../services/ListsService/IList';
import { IConsumePnPjsServiceClassState } from './IConsumePnPjsServiceClassState';

export default class ConsumePnPjsServiceClass extends React.Component<IConsumePnPjsServiceClassProps, IConsumePnPjsServiceClassState> {

  constructor(props: IConsumePnPjsServiceClassProps) {
    super(props);
    
    this.state = {
      lists: []
    };
  }

  public async componentDidMount() {
    await this._loadLists();    
  }

  public async componentDidUpdate(prevProps: IConsumePnPjsServiceClassProps) {
    await this._loadLists();    
  }

  private _loadLists = async (): Promise<void> => {
    const lists: IList[] = await this.props.listsService.GetLists();

    this.setState({
      lists: lists
    });
  }

  public render(): React.ReactElement<IConsumePnPjsServiceClassProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName,
    } = this.props;

    const {
      lists
    } = this.state;

    return (
      <section className={`${styles.consumePnPjsServiceClass} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Here is the list of lists!</h2>
        </div>
        <div>
          <ul className={styles.links}>
            {
              lists.map(l => <li>[{l.id}] - {l.title}</li>)
            }
          </ul>
        </div>
      </section>
    );
  }
}
