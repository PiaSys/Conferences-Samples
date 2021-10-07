import {
  BaseImageCardView,
  IImageCardParameters,
  IExternalLinkCardAction,
  IQuickViewCardAction,
  ICardButton
} from '@microsoft/sp-adaptive-card-extension-base';
import * as strings from 'ImageCardSampleAdaptiveCardExtensionStrings';
import { IImageCardSampleAdaptiveCardExtensionProps, IImageCardSampleAdaptiveCardExtensionState, QUICK_VIEW_REGISTRY_ID } from '../ImageCardSampleAdaptiveCardExtension';

export class CardView extends BaseImageCardView<IImageCardSampleAdaptiveCardExtensionProps, IImageCardSampleAdaptiveCardExtensionState> {
  public get data(): IImageCardParameters {
    return {
      primaryText: strings.PrimaryText,
      imageUrl: 'https://blogs.microsoft.com/uploads/2017/09/WR-Microsoft-logo.jpg'
    };
  }

  public get onCardSelection(): IQuickViewCardAction | IExternalLinkCardAction | undefined {
    return {
      type: 'ExternalLink',
      parameters: {
        target: 'https://www.bing.com'
      }
    };
  }
}
