import * as React from 'react';
import styles from './PicturesWatcher.module.scss';
import { IPicturesWatcherProps } from './IPicturesWatcherProps';
import { IPicturesWatcherState, IPicture } from './IPicturesWatcherState';
import { escape } from '@microsoft/sp-lodash-subset';

import { Placeholder } from "@pnp/spfx-controls-react/lib/Placeholder";
import { Spinner, SpinnerSize } from 'office-ui-fabric-react/lib/components/Spinner';
import { sp, Web, Site } from '@pnp/sp';
import { IListSubscription } from '@microsoft/sp-list-subscription';
import { Guid } from '@microsoft/sp-core-library';
import { IPictureItem } from './IPictureItem';

export default class PicturesWatcher extends React.Component<IPicturesWatcherProps, IPicturesWatcherState> {

  private _subscription: IListSubscription;
  
  constructor(props: IPicturesWatcherProps) {
    super(props);

    this.state = {
      pictures: [],
      loading: true
    };
  }

  public componentDidMount(): void {
    if (!this.props.picturesLibraryId) {
      return;
    }

    this._configureSubscription();
    this._loadPictures();
  }

  public componentDidUpdate(prevProps: Readonly<IPicturesWatcherProps>, prevState: Readonly<IPicturesWatcherState>, snapshot?: any): void {
    if (this.props.picturesLibraryId === prevProps.picturesLibraryId) {
      return;
    }

    this._configureSubscription();
    this._loadPictures();
  }

  private async _configureSubscription(): Promise<void> {

    // cleanup any previously existing subscription in case 
    // there is not anymore a target picture library id
    if (!this.props.picturesLibraryId && this._subscription) {
      this.props.listSubscriptionFactory.deleteSubscription(this._subscription);
      return;
    }

    this._subscription = await this.props.listSubscriptionFactory.createSubscription({
      listId: Guid.parse(this.props.picturesLibraryId),
      callbacks: {
        notification: this._loadPictures
      }
    });
  }

  private _loadPictures = () => {
    // show the spinner to the user
    this.setState({
      pictures: [],
      loading: true
    });

    // get the pictures from the target picture library
    sp.web.lists
      .getById(this.props.picturesLibraryId)
      // FileLeafRef contains the name of the file, FileRef contains the
      // server-relative URL of the file to be used in the document link
      .items.select('Title', 'FileRef')
      .orderBy('Modified', false)
      .get()
      // show retrieved documents, if any
      .then((pictures: IPictureItem[]) => {
        const newPictures: IPicture[] = pictures.map<IPicture>(p => ({ title: p.Title, serverRelativeUrl: p.FileRef }));
        this.setState({
          pictures: newPictures,
          loading: false
        });
      })
      // show error
      .catch(err => {
        this.setState({
          loading: false
        });
        console.log(err);
      });
  }

  public render(): React.ReactElement<IPicturesWatcherProps> {
    const needsConfiguration: boolean = !this.props.picturesLibraryId;


    return (
      <div className={ styles.picturesWatcher }>
        { needsConfiguration  &&
          <Placeholder
            iconName='Edit'
            iconText='Configure your web part'
            description='Please configure the web part.'
            buttonLabel='Configure'
            onConfigure={this.props.onConfigure} />}
        {!needsConfiguration &&
          this.state.loading &&
          <div style={{ textAlign: 'center' }}><Spinner size={SpinnerSize.large} label="Loading pictures..." /></div>}
        {!needsConfiguration &&
          !this.state.loading &&
          <div className={ styles.container }>
            <div>
              {
                (this.state.pictures != undefined) ?
                // For every selected image create an img tag in the output
                this.state.pictures.map(picture => <img src={ picture.serverRelativeUrl } alt={ picture.title } className={ styles.pictureItem }></img>)
                : undefined
              }
            </div>
          </div>}
      </div>
    );
  }
}
