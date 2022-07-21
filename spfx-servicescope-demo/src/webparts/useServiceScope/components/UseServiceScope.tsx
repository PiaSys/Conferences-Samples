import * as React from 'react';
import styles from './UseServiceScope.module.scss';
import { IUseServiceScopeState } from './IUseServiceScopeState';
import { IUseServiceScopeProps } from './IUseServiceScopeProps';

export default class UseServiceScope extends React.Component<IUseServiceScopeProps, IUseServiceScopeState> {

  public constructor(props: IUseServiceScopeProps) {
    super(props);
    
    this.state = {
      photo: null
    };
  }

  public async componentDidMount(): Promise<void> {
    await this._loadUserPhoto();    
  }

  public async componentDidUpdate(prevProps: IUseServiceScopeProps): Promise<void> {
    // Refresh data if and only if properties changed
    if (prevProps.upn === this.props.upn) {
      return;
    }

    await this._loadUserPhoto();    
  }

  private async _loadUserPhoto(): Promise<void> {

    const upn: string = this.props.upn;
    if (upn) {
      const photo: string = await this.props.userService.getBase64Avatar(upn);

      this.setState({
        photo: photo
      });
    }
  }

  public render(): React.ReactElement<IUseServiceScopeProps> {
    const {
      hasTeamsContext,
      upn,
    } = this.props;

    const {
      photo
    } = this.state;

    return (
      <section className={`${styles.useServiceScope} ${hasTeamsContext ? styles.teams : ''}`}>
        <div>
          { photo != null && photo.length > 0 ? <img src={photo} alt={upn} /> : null }
        </div>
      </section>
    );
  }
}
