import * as React from 'react';
import styles from './PlayWithTaxonomy.module.scss';
import { IPlayWithTaxonomyProps } from './IPlayWithTaxonomyProps';
import { IPlayWithTaxonomyState } from './IPlayWithTaxonomyState';
import { escape } from '@microsoft/sp-lodash-subset';

import { TaxonomyPicker, IPickerTerms } from "@pnp/spfx-controls-react/lib/TaxonomyPicker";
import { ListView, IViewField, SelectionMode, GroupOrder, IGrouping } from "@pnp/spfx-controls-react/lib/ListView";

const termsViewFields: IViewField[] = [
  {
    name: "key",
    displayName: "Key",
    sorting: true,
    minWidth: 250,
  },
  {
    name: "name",
    displayName: "Name",
    sorting: true,
    minWidth: 150,
  },
  {
    name: "path",
    displayName: "Path",
    sorting: true,
    minWidth: 250,
  },
  {
    name: "termSet",
    displayName: "Term Set ID",
    sorting: true,
    minWidth: 250,
  }
];

export default class PlayWithTaxonomy extends React.Component<IPlayWithTaxonomyProps, IPlayWithTaxonomyState> {

  constructor(props: IPlayWithTaxonomyProps) {
    super(props);
    
    this.state = {
      terms: undefined
    };
  }

  public render(): React.ReactElement<IPlayWithTaxonomyProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const { 
      terms
    } = this.state;

    return (
      <section className={`${styles.playWithTaxonomy} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Hello, {escape(userDisplayName)}!</h2>
        </div>
        <div>
          <h3>Here is the PnP Taxonomy Picker control in action!</h3>
          <div>
            <TaxonomyPicker allowMultipleSelections={true}
              termsetNameOrID="Products"
              panelTitle="Select Product"
              label="Products Picker"
              context={this.props.context}
              onChange={this.onTaxonomyPickerChange}
              isTermSetSelectable={false} />
          </div>
          { terms && terms.length > 0 ?
              <div>
                <h3>Here are the selected terms:</h3>
                <div>
                  <ListView
                    items={terms}
                    viewFields={termsViewFields}
                    compact={true}
                    selectionMode={SelectionMode.none}
                    showFilter={false}
                    stickyHeader={true} />
                </div>
              </div>
            : null                    
          }
        </div>
      </section>
    );
  }

  private onTaxonomyPickerChange = (terms : IPickerTerms) => {
    this.setState({
      terms: terms
    });
  }
}
