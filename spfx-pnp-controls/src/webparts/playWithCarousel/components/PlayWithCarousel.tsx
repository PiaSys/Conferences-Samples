import * as React from 'react';
import styles from './PlayWithCarousel.module.scss';
import { IPlayWithCarouselProps } from './IPlayWithCarouselProps';
import { escape } from '@microsoft/sp-lodash-subset';

import { Carousel, CarouselButtonsLocation, CarouselButtonsDisplay, ICarouselImageProps } from "@pnp/spfx-controls-react/lib/Carousel";
import { ImageFit } from 'office-ui-fabric-react/lib/Image';

export default class PlayWithCarousel extends React.Component<IPlayWithCarouselProps, {}> {
  public render(): React.ReactElement<IPlayWithCarouselProps> {
    const {
      description,
      isDarkTheme,
      environmentMessage,
      hasTeamsContext,
      userDisplayName,
      elements
    } = this.props;

    const carouselElements: ICarouselImageProps[] = elements.map(i => {return {
        imageSrc: i.imageSrc,
        title: i.title,
        description: i.description,
        url: i.url,
        showDetailsOnHover: true,
        imageFit: ImageFit.cover      
      };
    });

    return (
      <section className={`${styles.playWithCarousel} ${hasTeamsContext ? styles.teams : ''}`}>
        <div className={styles.welcome}>
          <img alt="" src={isDarkTheme ? require('../assets/welcome-dark.png') : require('../assets/welcome-light.png')} className={styles.welcomeImage} />
          <h2>Welcome, {escape(userDisplayName)}!</h2>
          <div>Here is a demo of the Carousel PnP Reusable Control</div>
        </div>
        <div>
          <Carousel
            buttonsLocation={CarouselButtonsLocation.top}
            buttonsDisplay={CarouselButtonsDisplay.block}
            contentContainerStyles={styles.carouselContent}
            containerButtonsStyles={styles.carouselButtonsContainer}
            isInfinite={true}
            element={carouselElements}
            pauseOnHover={true}
            interval={4000}
            onMoveNextClicked={this._onCarouselMoveNextClicked}
            onMovePrevClicked={this._onCarouselMovePrevClicked}
            onSelect={this._onCarouselSelect}
          />
        </div>
      </section>
    );
  }

  private _onCarouselMoveNextClicked = (index: number): void => {
    console.log(`Next button clicked: ${index}`);
  }

  private _onCarouselMovePrevClicked = (index: number): void => {
    console.log(`Prev button clicked: ${index}`);
  }

  private _onCarouselSelect = (selectedIndex: number): void => {
    console.log(`Item selected: ${selectedIndex}`);
  }
}
