import * as React from 'react';
import styles from './M365EventDashboard.module.scss';
import { IM365EventDashboardProps } from './IM365EventDashboardProps';

export default class M365EventDashboard extends React.Component<IM365EventDashboardProps, {}> {
  public render(): React.ReactElement<IM365EventDashboardProps> {
    const {
      environmentMessage,
      hasTeamsContext,
    } = this.props;

    return (
      <section className={`${styles.m365EventDashboard} ${hasTeamsContext ? styles.teams : ''}`}>
        <div>{environmentMessage}</div>
      </section>
    );
  }
}
