import * as React from 'react';
import * as ReactDom from 'react-dom';
import { Version } from '@microsoft/sp-core-library';
import {
  IPropertyPaneConfiguration,
  PropertyPaneTextField
} from '@microsoft/sp-property-pane';
import { BaseClientSideWebPart } from '@microsoft/sp-webpart-base';
import { IReadonlyTheme } from '@microsoft/sp-component-base';

import * as strings from 'PlayWithCarouselWebPartStrings';
import PlayWithCarousel from './components/PlayWithCarousel';
import { IPlayWithCarouselProps, ICarouselElement } from './components/IPlayWithCarouselProps';

export interface IPlayWithCarouselWebPartProps {
  description: string;
}

export default class PlayWithCarouselWebPart extends BaseClientSideWebPart<IPlayWithCarouselWebPartProps> {

  private _isDarkTheme: boolean = false;
  private _environmentMessage: string = '';

  protected onInit(): Promise<void> {
    this._environmentMessage = this._getEnvironmentMessage();

    return super.onInit();
  }

  public render(): void {

    const carouselElements: ICarouselElement[] = [
      {
        imageSrc: 'https://carconfigurator.ferrari.com/assets/cars/portofinom/packages/default/car-ferrari-portofino-m_splash.jpg',
        title: 'Ferrari Portofino',
        description: 'This is the Ferrari Portofino',
        url: 'https://www.ferrari.com/it-IT/auto/ferrari-portofino-m',
      },
      {
        imageSrc: 'https://api.ferrari.com/cms/network/medias//resize/617a6c931823990948a5b059-ferrari-genuine-car-configurator-2021-news-l?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF',
        title: 'Ferrari 812 GTS',
        description: 'This is the Ferrari 812 GTS',
        url: 'https://www.ferrari.com/it-IT/auto/812-gts',
      },
      {
        imageSrc: 'https://api.ferrari.com/cms/network/medias//resize/6093caece41d634de6171ac6-ferrari-magazine--qb4MPUu-z.jpg?apikey=9QscUiwr5n0NhOuQb463QEKghPrVlpaF&width=768&height=430',
        title: 'Ferrari F8 Tributo',
        description: 'This is the Ferrari F8 Tributo',
        url: 'https://www.ferrari.com/it-IT/magazine/articles/reveal-ferrari-f8-tributo',
      },
      {
        imageSrc: 'https://cdn.motor1.com/images/mgl/n2mnj/s1/ferrari-458-italia.jpg',
        title: 'Ferrari 458 Italia',
        description: 'This is the Ferrari 458 Italia',
        url: 'https://www.ferrari.com/it-IT/auto/458-italia',
      },
    ];

    const element: React.ReactElement<IPlayWithCarouselProps> = React.createElement(
      PlayWithCarousel,
      {
        description: this.properties.description,
        isDarkTheme: this._isDarkTheme,
        environmentMessage: this._environmentMessage,
        hasTeamsContext: !!this.context.sdks.microsoftTeams,
        userDisplayName: this.context.pageContext.user.displayName,
        elements: carouselElements
      }
    );

    ReactDom.render(element, this.domElement);
  }

  private _getEnvironmentMessage(): string {
    if (!!this.context.sdks.microsoftTeams) { // running in Teams
      return this.context.isServedFromLocalhost ? strings.AppLocalEnvironmentTeams : strings.AppTeamsTabEnvironment;
    }

    return this.context.isServedFromLocalhost ? strings.AppLocalEnvironmentSharePoint : strings.AppSharePointEnvironment;
  }

  protected onThemeChanged(currentTheme: IReadonlyTheme | undefined): void {
    if (!currentTheme) {
      return;
    }

    this._isDarkTheme = !!currentTheme.isInverted;
    const {
      semanticColors
    } = currentTheme;
    this.domElement.style.setProperty('--bodyText', semanticColors.bodyText);
    this.domElement.style.setProperty('--link', semanticColors.link);
    this.domElement.style.setProperty('--linkHovered', semanticColors.linkHovered);

  }

  protected onDispose(): void {
    ReactDom.unmountComponentAtNode(this.domElement);
  }

  protected get dataVersion(): Version {
    return Version.parse('1.0');
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {
    return {
      pages: [
        {
          header: {
            description: strings.PropertyPaneDescription
          },
          groups: [
            {
              groupName: strings.BasicGroupName,
              groupFields: [
                PropertyPaneTextField('description', {
                  label: strings.DescriptionFieldLabel
                })
              ]
            }
          ]
        }
      ]
    };
  }
}
