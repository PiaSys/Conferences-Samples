import * as React from 'react';
import styles from './NewsTeamsTab.module.scss';
import { INewsTeamsTabProps } from './INewsTeamsTabProps';
import { INewsTeamsTabState, INewsItem } from './INewsTeamsTabState';
import { escape } from '@microsoft/sp-lodash-subset';
import { List } from "@pnp/sp";
import { Spinner, SpinnerSize } from 'office-ui-fabric-react/lib/components/Spinner';

export default class NewsTeamsTab extends React.Component<INewsTeamsTabProps, INewsTeamsTabState> {

  /**
   *
   */
  constructor(props: INewsTeamsTabProps) {
    super(props);

    this.state = {
      news: [],
      error: null,
      loading: true,
    };
  }

  private async fetchNews(): Promise<void> {
    if (this.props.web && this.props.newsListId) {
      this.setState({
        loading: true
      });

      let newsItems: any[] = await this.props.web.lists.getById(this.props.newsListId).items.select('Id,Title,Description').filter('PromotedState%20eq%202').getAll();

      let news: INewsItem[] = newsItems.map(i => {
        return {
          title: i.Title,
          description: i.Description,
        };
      });

      this.setState({
        loading: false,
        news: news.slice(0, 10),
      });
    }
  }

  public componentDidMount(): void {
    this.fetchNews();
  }

  public componentDidUpdate(prevProps: INewsTeamsTabProps, prevState: INewsTeamsTabState): void {
    if (prevProps.newsListId != this.props.newsListId) {
      this.fetchNews();
    }
  }

  public render(): React.ReactElement<INewsTeamsTabProps> {

    let welcomeMessage = '';
    if (this.props.inTeams)
    {
      welcomeMessage = "Welcome to Microsoft Teams!";
    }
    else
    {
      welcomeMessage = "We are not in Microsoft Teams!";
    }

    return (
      <div className={ styles.newsTeamsTab }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>{welcomeMessage}</span>
            </div>
          </div>
          { this.state.loading && this.props.newsListId ?
            <div className={ styles.row }>
              <div className={ styles.column }>
                <Spinner label="Loading news ..." size={SpinnerSize.large} />
              </div>
            </div> :
            null
          }
          { this.props.newsListId && this.state.news && this.state.news.length > 0 ?
            <div className={ styles.row }>
              <div className={ styles.column }>
                <ul>
                  { this.state.news.map(i => <li>[{i.title}] - {i.description}</li> )}
                </ul>
              </div>
            </div> :
            null
          }
        </div>
      </div>
    );
  }
}
