import * as React from 'react';
import styles from './SampleSubscriber.module.scss';
import { ISampleSubscriberProps } from './ISampleSubscriberProps';
import { Placeholder } from "@pnp/spfx-controls-react/lib/Placeholder";
import { Label } from 'office-ui-fabric-react/lib/Label';

export default class SampleSubscriber extends React.Component<ISampleSubscriberProps, {}> {
  public render(): React.ReactElement<ISampleSubscriberProps> {

    // let dynamicTextObject: any = this.props.dynamicText.tryGetValue();
    // let dynamicNumberObject: any = this.props.dynamicNumber.tryGetValue();

    // console.log(dynamicTextObject.textValue);
    // console.log(dynamicNumberObject.numericValue);

    const dynamicText: string | undefined = this.props.dynamicText.tryGetValue(); // dynamicTextObject.textValue;
    const dynamicNumber: number | undefined = this.props.dynamicNumber.tryGetValue(); // dynamicNumberObject.numericValue;

    // console.log(dynamicText);
    // console.log(dynamicNumber);

    return (
      <div className={ styles.sampleSubscriber }>
        {this.props.needsConfiguration &&
          <Placeholder
            iconName='Edit'
            iconText='Configure your web part'
            description='Please configure the web part.'
            buttonLabel='Configure'
            onConfigure={this.props.onConfigure} />}
        {!this.props.needsConfiguration &&
          <div className={ styles.container }>
            <div className={ styles.row }>
              <div className={ styles.column }>
                <span className={ styles.title }>Welcome to Dynamic Data Subscriber!</span>
                <p className={ styles.subTitle }>Here are values coming from Dynamic Data Publisher:</p>
                <p className={ styles.description }>Text: <Label>{dynamicText}</Label></p>
                <p className={ styles.description }>Number: <Label>{dynamicNumber}</Label></p>
              </div>
            </div>
          </div>}
      </div>
    );
  }
}
