import * as React from 'react';
import styles from './WorkingWithLists.module.scss';
import { IWorkingWithListsProps } from './IWorkingWithListsProps';
import { IWorkingWithListsState } from './IWorkingWithListsState';
import { escape } from '@microsoft/sp-lodash-subset';
import { sp } from "@pnp/sp/presets/all";
import { IItemAddResult } from "@pnp/sp/items";
import { PrimaryButton } from 'office-ui-fabric-react';

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

  private addItem = async () => {

    const iar: IItemAddResult = await sp.web.lists.getByTitle(this.props.listTitle).items.add({
      Title: "This is my new item"
    });

    console.log(iar);

    await this.loadCurrentListItems();
  }

  private updatedItem = async () => {

    const updatedItem = await sp.web.lists.getByTitle(this.props.listTitle).items.getById(9).update(
      {
        Title: "This is item has been updated by PnPjs"
      }
    );
    console.log(updatedItem);

    await this.loadCurrentListItems();
  }

  private deleteItem = async () => {
    await sp.web.lists.getByTitle(this.props.listTitle).items.getById(9).delete();
    await this.loadCurrentListItems();
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
                <PrimaryButton text="Add an item" onClick={this.addItem} />&nbsp;
                <PrimaryButton text="Update an item" onClick={this.updatedItem} />&nbsp;
                <PrimaryButton text="Delete an item" onClick={this.deleteItem} />&nbsp;
              </div> : <div>Loading ...</div>
            }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
