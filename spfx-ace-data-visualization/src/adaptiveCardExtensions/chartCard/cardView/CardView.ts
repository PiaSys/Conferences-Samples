import {
  BaseComponentsCardView,
  IDataVisualizationCardViewParameters,
  // IDataPoint,
  // LineChartCardView,
  // BarChartCardView,
  PieChartCardView,
  IPieDataPoint,
  IExternalLinkCardAction,
  IQuickViewCardAction  
} from '@microsoft/sp-adaptive-card-extension-base';
import {
  IChartCardAdaptiveCardExtensionProps,
  IChartCardAdaptiveCardExtensionState,
  QUICK_VIEW_REGISTRY_ID,
} from '../ChartCardAdaptiveCardExtension';

// Sample Data for line or bar charts
// const seriesData1 : IDataPoint<Date>[] = [
//   {
//     x: new Date(2024, 4, 1),
//     y: 2900
//   },
//   {
//     x: new Date(2024, 5, 1),
//     y: 3000
//   },
//   {
//     x: new Date(2024, 6, 1),
//     y: 3100
//   },
//   {
//     x: new Date(2024, 7, 1),
//     y: 3100
//   },
//   {
//     x: new Date(2024, 8, 1),
//     y: 3100
//   }
// ];

// const seriesData2 : IDataPoint<Date>[] = [
//   {
//     x: new Date(2024, 4, 1),
//     y: 2500
//   },
//   {
//     x: new Date(2024, 5, 1),
//     y: 3100
//   },
//   {
//     x: new Date(2024, 6, 1),
//     y: 2100
//   },
//   {
//     x: new Date(2024, 7, 1),
//     y: 1900
//   },
//   {
//     x: new Date(2024, 8, 1),
//     y: 3200
//   }
// ];

// const seriesData3 : IDataPoint<Date>[] = [
//   {
//     x: new Date(2024, 4, 1),
//     y: 2200
//   },
//   {
//     x: new Date(2024, 5, 1),
//     y: 2400
//   },
//   {
//     x: new Date(2024, 6, 1),
//     y: 2000
//   },
//   {
//     x: new Date(2024, 7, 1),
//     y: 2600
//   },
//   {
//     x: new Date(2024, 8, 1),
//     y: 4500
//   }
// ];

// Sample Data for pie chart
const pieData: IPieDataPoint[] = [
  { x: 'January', y: 50 },
  { x: 'February', y: 25, color: '#eaae32', showLabel: false },
  { x: 'March', y: 40, showLabel: false },
  { x: 'Apr', y: 35 },
  { x: 'May', y: 60 },
  { x: 'Jun', y: 29 }
];

export class CardView extends BaseComponentsCardView<
  IChartCardAdaptiveCardExtensionProps,
  IChartCardAdaptiveCardExtensionState,
  IDataVisualizationCardViewParameters
> {
  public get cardViewParameters(): IDataVisualizationCardViewParameters {
    // return LineChartCardView({
    //   cardBar: {
    //     componentName: 'cardBar',
    //     title: this.properties.title
    //   },
    //   body: {
    //     componentName: 'dataVisualization',
    //     dataVisualizationKind: 'line',
    //     series: [{
    //       data: seriesData1,
    //       lastDataPointLabel: '3.1K',
    //       color: '#FF0000'
    //     },
    //     {
    //       data: seriesData2,
    //       lastDataPointLabel: '3.2K',
    //       color: '#800080'
    //     },
    //     {
    //       data: seriesData3,
    //       lastDataPointLabel: '4.5K',
    //       color: '#01CBAE'
    //     }]
    //   }
    // });
    // return BarChartCardView({
    //   cardBar: {
    //     componentName: 'cardBar',
    //     title: this.properties.title
    //   },
    //   body: {
    //     componentName: 'dataVisualization',
    //     dataVisualizationKind: 'bar',
    //     series: [{
    //       data: seriesData1,
    //       color: '#FF0000'
    //     },
    //     {
    //       data: seriesData2,
    //       color: '#800080'
    //     },
    //     {
    //       data: seriesData3,
    //       color: '#01CBAE'
    //     }]
    //   }
    // });
    return PieChartCardView({
      cardBar: {
        componentName: 'cardBar',
        title: this.properties.title
      },
      body: {
        componentName: 'dataVisualization',
        dataVisualizationKind: 'pie',
        isDonut: true,
        series: [{
            data: pieData,
        }]
      }
    });
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'QuickView',
      parameters: {
        view: QUICK_VIEW_REGISTRY_ID
      }
    };
  }
}
