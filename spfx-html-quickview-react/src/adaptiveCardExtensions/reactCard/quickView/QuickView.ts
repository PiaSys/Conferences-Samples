import { BaseWebQuickView } from '@microsoft/sp-adaptive-card-extension-base';
import {
  IReactCardAdaptiveCardExtensionProps,
  IReactCardAdaptiveCardExtensionState
} from '../ReactCardAdaptiveCardExtension';
import * as React from 'react';
import * as ReactDom from 'react-dom';
import HelloWorld from '../components/HelloWorld';
import { IHelloWorldProps } from '../components/IHelloWorldProps';

export class QuickView extends BaseWebQuickView<
  IReactCardAdaptiveCardExtensionProps,
  IReactCardAdaptiveCardExtensionState
> {
  render(): void {
    const element: React.ReactElement<IHelloWorldProps> = React.createElement(
      HelloWorld,
      {
        description: this.properties.description,
        userDisplayName: this.context.pageContext.user.displayName
      }
    );

    ReactDom.render(element, this.domElement);
  }

  override dispose(): void {
    ReactDom.unmountComponentAtNode(this.domElement);
  }
}
