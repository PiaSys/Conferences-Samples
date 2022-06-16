import * as React from 'react';
import styles from './PlayWithChart.module.scss';
import { IPlayWithChartProps } from './IPlayWithChartProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { ChartControl, ChartPalette, ChartType } from '@pnp/spfx-controls-react/lib/ChartControl';
import { ChartData } from 'chart.js';

const data: ChartData = {
  labels: ['Italy', 'USA', 'France', 'Germany', 'UK', 'Spain'],
  datasets: [
    {
      label: 'Sells',
      data: [1250, 1450, 1200, 1400, 200, 680]
    },
    {
      label: 'Customers',
      data: [120, 150, 90, 50, 4, 15]
    }
  ]
};

export default class PlayWithChart extends React.Component<IPlayWithChartProps, {}> {
  public render(): React.ReactElement<IPlayWithChartProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    return (
      <section className={`${styles.playWithChart} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <h2>Here is a demo of the ChartControl PnP Reusable Control</h2>
          <ChartControl 
            type={ChartType.Pie}
            palette={ChartPalette.OfficeColorful1}
            datapromise={this._loadData()} 
            />
        </div>
      </section>
    );
  }

  private _loadData = async (): Promise<ChartData> => {
    return new Promise<ChartData>((resolve, reject) => {
      resolve(data);
    });
  }
}
