import * as React from 'react';
import styles from './PlayWithMonacoEditor.module.scss';
import { IPlayWithMonacoEditorProps } from './IPlayWithMonacoEditorProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { MonacoEditor } from "@pnp/spfx-controls-react/lib/controls/monacoEditor";

export default class PlayWithMonacoEditor extends React.Component<IPlayWithMonacoEditorProps, {}> {
  public render(): React.ReactElement<IPlayWithMonacoEditorProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const contact = {
      firstName: "Paolo",
      lastName: "Pialorsi",
      country: "Italy",
      city: "Brescia",
      hobbies: [
        "Drinking beer",
        "Driving sport cars",
        "Hanging out with friends"
      ]
    };

    return (
      <section className={`${styles.playWithMonacoEditor} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <h2>Here is a demo of the MonacoEditor PnP Reusable Control</h2>
          <MonacoEditor value={JSON.stringify(contact)}
               showLineNumbers={true}
               showMiniMap={false}
               onValueChange={this._onValueChange}
               language={"json"}/>        
        </div>
      </section>
    );
  }

  private _onValueChange = (newValue: string, validationErrors: string[]): void => {
    console.log(newValue);
  }
}
