import * as React from 'react';
import styles from './SearchWithPnPjs.module.scss';
import { ISearchWithPnPjsProps } from './ISearchWithPnPjsProps';
import { ISearchWithPnPjsState } from './ISearchWithPnPjsState';
import { escape } from '@microsoft/sp-lodash-subset';
import { TextField, PrimaryButton, ChoiceGroup, IChoiceGroupOption } from 'office-ui-fabric-react';
import { sp, ISearchQuery, SearchResults, SearchQueryBuilder } from "@pnp/sp/presets/all";

const searchOptions: IChoiceGroupOption[] = [
  { key: 'TextQuery', text: 'Text Query' },
  { key: 'SearchQuery', text: 'Typed Search Query' },
  { key: 'QueryBuilder', text: 'Query Builder' }
];

export default class SearchWithPnPjs extends React.Component<ISearchWithPnPjsProps, ISearchWithPnPjsState> {

  constructor(props: ISearchWithPnPjsProps) {
    super(props);
    
    this.state = {
      results: [],
      searchText: '',
      searchOption: 'TextQuery',
    };
  }

  public async componentDidMount() {
    sp.setup(this.props.context);
  }

  private searchData = async () => {

    switch (this.state.searchOption)
    {
      case "TextQuery":
      default:
        // Option #1
        const results: SearchResults = await sp.search(this.state.searchText);

        console.log(results);
        console.log(results.RowCount);
        console.log(results.PrimarySearchResults);

        this.setState({
          results: results.PrimarySearchResults.map(i => i.Path)
        }); 
        break;

      case "SearchQuery":
        // Option #2
        const searchQuery: ISearchQuery = {
          Querytext: this.state.searchText,
          RowLimit: 5,
          EnableInterleaving: true,
        };
        const results2: SearchResults = await sp.search(searchQuery);

        console.log(results2);
        console.log(results2.RowCount);
        console.log(results2.PrimarySearchResults);

        this.setState({
          results: results2.PrimarySearchResults.map(i => i.Path)
        }); 
        break;

      case "QueryBuilder":
          // Option #2
          const builder = SearchQueryBuilder(this.state.searchText)
            .rowLimit(3)
            .enableInterleaving
            .enableQueryRules
            .enableSorting
            .processPersonalFavorites;
          const results3: SearchResults = await sp.search(builder);
  
          console.log(results3);
          console.log(results3.RowCount);
          console.log(results3.PrimarySearchResults);
  
          this.setState({
            results: results3.PrimarySearchResults.map(i => i.Path)
          }); 
          break;
        }
  }

  private onSearchTextChanged = (event, newValue: string): void => {
    this.setState({
      searchText: newValue
    });
  }

  private onSearchOptionSelected = (ev: React.FormEvent<HTMLInputElement>, option: IChoiceGroupOption): void => {
    this.setState({
      searchOption: option.key
    });
  }

  public render(): React.ReactElement<ISearchWithPnPjsProps> {
    return (
      <div className={ styles.searchWithPnPjs }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>

            <p><TextField onChange={this.onSearchTextChanged} /></p>
            <p><ChoiceGroup defaultSelectedKey="TextQuery" options={searchOptions} onChange={this.onSearchOptionSelected} required={true} /></p>
            <p><PrimaryButton text="Play with Search" onClick={this.searchData} /></p>
            
            { (this.state.results != null && this.state.results.length > 0) ?
              <ul>
                { this.state.results.map(i => <li>{ i }</li>) }
              </ul>
              : null
            }
            </div>
          </div>
        </div>
      </div>
    );
  }
}
