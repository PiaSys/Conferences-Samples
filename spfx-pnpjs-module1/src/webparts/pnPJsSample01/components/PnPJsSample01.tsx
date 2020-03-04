import * as React from 'react';
import styles from './PnPJsSample01.module.scss';
import { IPnPJsSample01Props } from './IPnPJsSample01Props';
import { IPnPJsSample01State } from './IPnPJsSample01State';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp, IWebInfo } from "@pnp/sp/presets/all";
import { ISiteUserInfo } from '@pnp/sp/site-users/types';

export default class PnPJsSample01 extends React.Component<IPnPJsSample01Props, IPnPJsSample01State> {

  constructor(props: IPnPJsSample01Props) {
    super(props);
    
    this.state = {
      Loading: true,
    };
  }
  
  public async componentDidMount() {
    sp.setup(this.props.context);
    await this.loadCurrentContextInformation();
  }
  
  private loadCurrentContextInformation = async () => {

    this.setState({
      Loading: true,
    });

    const user: ISiteUserInfo = await sp.web.currentUser.select('Id,Title,LoginName').get();
    const web: IWebInfo = await sp.web.select('Id,Title').get();

    this.setState({
      Loading: false,
      SiteTitle: web.Title,
      LoginName: user.LoginName,
    });
  }

  public render(): React.ReactElement<IPnPJsSample01Props> {
    return (
      <div className={ styles.pnPJsSample01 }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <h2>PnPjs Samples - Episode 01</h2>
            { !this.state.Loading ?
                <div className="ms-Grid">
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">Site Title</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">{ this.state.SiteTitle }</div>
                  </div>
                  <div className="ms-Grid-row">
                    <div className="ms-Grid-col ms-sm4 ms-md4 ms-lg4">User LoginName</div>
                    <div className="ms-Grid-col ms-sm8 ms-md8 ms-lg8">{ this.state.LoginName }</div>
                  </div>
                </div> : <div>Loading ...</div>
              }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
