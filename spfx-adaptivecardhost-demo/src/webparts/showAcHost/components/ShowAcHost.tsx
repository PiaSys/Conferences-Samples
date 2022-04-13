import * as React from 'react';
import styles from './ShowAcHost.module.scss';
import { IShowAcHostProps } from './IShowAcHostProps';
import { escape } from '@microsoft/sp-lodash-subset';

// Import the AdaptiveCardHost types from PnP React
import { AdaptiveCardHost, IAdaptiveCardHostActionResult, AdaptiveCardHostThemeType } from "@pnp/spfx-controls-react/lib/AdaptiveCardHost";

export default class ShowAcHost extends React.Component<IShowAcHostProps, {}> {
  public render(): React.ReactElement<IShowAcHostProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName
    } = this.props;

    const card: any = require('../assets/choose-menu-card.json');
    // const data: any = require('../assets/sample-data.json');

    //   const data: any = {
    //     "@context": "http://schema.org/",
    //     "@type": "LocalBusiness",
    //     name: "Malt & Vine",
    //     url: "https://www.yelp.com/biz/malt-and-vine-redmond",
    //     address: {
    //         addressLocality: "Redmond",
    //         addressRegion: "WA",
    //         streetAddress: "16851 Redmond Way",
    //         postalCode: "98052",
    //         addressCountry: "US"
    //     },
    //     image: "https://s3-media1.fl.yelpcdn.com/bphoto/HD_NsxwaCTwKRxvOZs2Shw/ls.jpg",
    //     imageAlt: "image of beer growlers on a table",
    //     telephone: "+14258816461",
    //     aggregateRating: {
    //         reviewCount: 176,
    //         "@type": "AggregateRating",
    //         ratingValue: 4.5
    //     },
    //     review: [
    //         {
    //             reviewRating: {
    //                 ratingValue: 4
    //             },
    //             datePublished: "2014-11-28",
    //             description: "Great concept and a wide selection of beers both on tap and bottled! Smaller wine selection than I wanted, but the variety of beers certainly made up for that. Although I didn't order anything, my boyfriend got a beer and he loved it. Their prices are fair too. \n\nThe concept is really awesome. It's a bar/store that you can bring outside food into. The place was pretty packed tonight. I wish we had stayed for more than one drink. I would have loved to sample everything!",
    //             author: "Blaire S."
    //         }
    //     ],
    //     priceRange: "mid-priced"
    // };

    const data: any = {
        title: "Choose your menu",
        subTitle: "Easily make your lunch",
        description: "You can choose one main course, one desert and one beverage for 10$!"
      };

    return (
      <section className={`${styles.showAcHost} ${hasTeamsContext ? styles.teams : ''}`}>
        <AdaptiveCardHost
          card={card}
          onInvokeAction={this.onInvokeAction}
          data={{"$root": data}}
          themeType={AdaptiveCardHostThemeType.SharePoint}
          onError={this.onError}
        />
      </section>
    );
  }

  private onInvokeAction = (action) => {
    // alert(JSON.stringify(action));
    if (action.type == "Action.Submit") {
      const menu: any = {
          mainCourse: action.data.mainCourse,
          dessert: action.data.dessert,
          beverages: action.data.beverages,
        };
      alert(JSON.stringify(menu));
    }
  }

  private onError = (error) => {
    alert(error.message);
  }
}
