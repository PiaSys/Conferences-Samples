import * as React from 'react';
import styles from './WorkingWithLists.module.scss';
import { IWorkingWithListsProps } from './IWorkingWithListsProps';
import { IWorkingWithListsState } from './IWorkingWithListsState';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp } from "@pnp/sp/presets/all";

export default class WorkingWithLists extends React.Component<IWorkingWithListsProps, IWorkingWithListsState> {

  constructor(props: IWorkingWithListsProps) {
    super(props);
    
    this.state = {
      loading: true,
      items: null,
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
    await this.loadCurrentListItems();
  }

  public async componentDidUpdate(prevProps: Readonly<IWorkingWithListsProps>, prevState: Readonly<IWorkingWithListsState>) {
    if (prevProps.listTitle != this.props.listTitle)
    {
      await this.loadCurrentListItems();
    }
  }

  private loadCurrentListItems = async () => {

    this.setState({
      loading: true,
    });

    const listItems: any[] = await sp.web.lists.getByTitle(this.props.listTitle).items.get();
    console.log(listItems);

    this.setState({
      loading: false,
      items: listItems.map(i => i.Title),
    });
  }

  public render(): React.ReactElement<IWorkingWithListsProps> {
    return (
      <div className={ styles.workingWithLists }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
            { !this.state.loading ?
              <div>
                <span className={ styles.title }>Items of list {this.props.listTitle}</span>
                <ul>
                  { this.state.items.map(i => <li>{i}</li>) }
                </ul>
              </div> : <div>Loading ...</div>
            }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
