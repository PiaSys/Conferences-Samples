export interface IPlayWithCarouselProps {
  description: string;
  isDarkTheme: boolean;
  environmentMessage: string;
  hasTeamsContext: boolean;
  userDisplayName: string;
  elements: ICarouselElement[];
}

export interface ICarouselElement {
  imageSrc: string;
  title: string;
  description: string;
  url: string;
}
