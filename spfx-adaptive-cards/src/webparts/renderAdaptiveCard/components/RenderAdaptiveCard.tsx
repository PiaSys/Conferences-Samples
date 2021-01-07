import * as React from 'react';
import styles from './RenderAdaptiveCard.module.scss';
import { IRenderAdaptiveCardProps } from './IRenderAdaptiveCardProps';
import { IRenderAdaptiveCardState } from './IRenderAdaptiveCardState';
import { escape } from '@microsoft/sp-lodash-subset';
import * as AdaptiveCards from "adaptivecards";
import { sp } from "@pnp/sp";
import "@pnp/sp/webs";
import "@pnp/sp/files";

export default class RenderAdaptiveCard extends React.Component<IRenderAdaptiveCardProps, IRenderAdaptiveCardState> {

  constructor(props: IRenderAdaptiveCardProps) {
    super(props);

    this.state = {
      card: undefined
    };
  }

  public componentDidMount(): void {
    // load data initially after the component has been instantiated
    this.loadAdaptiveCard();
  }

  public componentDidUpdate(prevProps: IRenderAdaptiveCardProps, prevState: IRenderAdaptiveCardState): void {
    // verify if the component should update. Helps avoid unnecessary re-renders
    // when the parent has changed but this component hasn't
    if (prevProps.cardUrl !== this.props.cardUrl) {
      this.loadAdaptiveCard();
    }
  }

  private async loadAdaptiveCard() {

    if (this.props.cardUrl === undefined || this.props.cardUrl.length === 0) {
      return;
    }

    sp.web.getFileByServerRelativeUrl(this.props.cardUrl).getJSON().then(json => {
      this.setState({
        card: json
      });
    }).catch(error => {
      alert(error);      
    });

  }

  public render(): React.ReactElement<IRenderAdaptiveCardProps> {

    let content = <div>Please provide an Adaptive Card URL in the property pane</div>;

    if (this.state.card !== undefined) {

      // Build the AdaptiveCard object
      var adaptiveCard = new AdaptiveCards.AdaptiveCard();

      // And configure the HostConfig (font, font size, style, spacing, etc.)
      adaptiveCard.hostConfig = new AdaptiveCards.HostConfig({
        fontFamily: "Segoe UI, Helvetica Neue, sans-serif"
        // More host config options
      });

      // Plug into the actions commands execution
      adaptiveCard.onExecuteAction = this.handleCardActions;

      // Parse the selected card
      adaptiveCard.parse(this.state.card);

      // Render the selected card
      var renderedCard = adaptiveCard.render();

      // Prepare the content for actual rendering
      content = <div ref={(el) => { el && el.appendChild(renderedCard) }} />
    }
    
    return (
      <div className={ styles.renderAdaptiveCard }>
        <div className={ styles.container }>
          { content }
        </div>
      </div>
    );
  }

  private handleCardActions = (action) => {

    if (action._propertyBag["type"] === "Action.Submit") {
      alert("You pressed a submit button!");
      alert(`Firstname: ${action._processedData.FirstName}\nLastname: ${action._processedData.LastName}\nBirthdate: ${action._processedData.BirthDate}\nFavorite color: ${action._processedData.FavoriteColor}\nDo you like this form: ${action._processedData.DoYouLikeThis}\n`);
    }
    else if (action._propertyBag["type"] === "Action.OpenUrl") {
      window.open(action.url, "_blank");
    }
  }
}
