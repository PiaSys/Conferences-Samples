import { Version } from '@microsoft/sp-core-library';
import {
  BaseClientSideWebPart,
  IPropertyPaneConfiguration,
  PropertyPaneTextField,
  PropertyPaneCheckbox,
  PropertyPaneChoiceGroup,
  PropertyPaneLabel,
  PropertyPaneLink,
  PropertyPaneSlider,
  PropertyPaneToggle,
  PropertyPaneDropdown,
  IPropertyPaneDropdownOption,
  PropertyPaneButton,
  PropertyPaneButtonType,
  PropertyPaneHorizontalRule
} from '@microsoft/sp-webpart-base';
import { escape } from '@microsoft/sp-lodash-subset';

import styles from './ShowPropertyPaneWebPart.module.scss';
import * as strings from 'ShowPropertyPaneWebPartStrings';

import { IShowPropertyPaneWebPartProps } from './IShowPropertyPaneWebPartProps';

export default class ShowPropertyPaneWebPart extends BaseClientSideWebPart<IShowPropertyPaneWebPartProps> {

  private selectionOptions: IPropertyPaneDropdownOption[];

  public render(): void {
    this.domElement.innerHTML = `
      <div class="${styles.showPropertyPane}">
        <div class="${styles.container}">
          <div class="ms-Grid-row ms-bgColor-themeDark ms-fontColor-white ${styles.row}">
            <div class="ms-Grid-col ms-u-lg10 ms-u-xl8 ms-u-xlPush2 ms-u-lgPush1">
              <span class="ms-font-xl ms-fontColor-white">${escape(this.properties.title)}</span>
              <p class="ms-font-l ms-fontColor-white">${escape(this.properties.textContent)}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.FlagOptionFieldLabel)}: ${this.properties.flagOption}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.ChoiceOptionFieldLabel)}: ${this.properties.choiceOption}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.SelectionValuesFieldLabel)}: ${this.properties.selectionValues}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.FlagToggleFieldLabel)}: ${this.properties.flagToggle}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.NumericValueFieldLabel)}: ${this.properties.numericValue}</p>
              <p class="ms-font-l ms-fontColor-white">${escape(strings.ButtonValueFieldLabel)}: ${this.properties.buttonValue}</p>
            </div>
          </div>
        </div>
      </div>`;
  }

  protected get dataVersion(): Version {
    return Version.parse('1.0');
  }

  protected getPropertyPaneConfiguration(): IPropertyPaneConfiguration {

    this.selectionOptions = this.loadSelectionOptions();

    return {
      pages: [
        {
          header: {
            description: strings.PropertyPaneTitle
          },
          groups: [
            {
              groupName: strings.ConfigurationGroupName,
              groupFields: [
                PropertyPaneTextField('title', {
                  label: strings.TitleFieldLabel,
                  onGetErrorMessage: this.titleValidator
                }),
                PropertyPaneTextField('textContent', {
                  label: strings.TextContentFieldLabel,
                  multiline: true,
                  resizable: true
                }),
                PropertyPaneCheckbox('flagOption', {
                  text: strings.FlagOptionFieldLabel
                }),
                PropertyPaneChoiceGroup('choiceOption', {
                  label: strings.ChoiceOptionFieldLabel,
                  options: [
                    { key: 1, text: "Option 1"},
                    { key: 2, text: "Option 2"},
                    { key: 3, text: "Option 3"},
                  ]
                }),
                PropertyPaneHorizontalRule(),
                PropertyPaneDropdown('selectionValues', {
                  label: strings.SelectionValuesFieldLabel,
                  options: this.selectionOptions
                }),
                PropertyPaneToggle('flagToggle', {
                    label: strings.FlagToggleFieldLabel,
                }),
                PropertyPaneSlider('numericValue', {
                    label: strings.NumericValueFieldLabel,
                    min: 0,
                    max: 100,
                    showValue: true,
                    step: 5
                }),
                PropertyPaneHorizontalRule(),
                PropertyPaneButton('buttonValue', {
                  text: 'Primary Button',
                  buttonType: PropertyPaneButtonType.Primary,
                  onClick: this.primaryButtonClick
                }),
                PropertyPaneButton('', {
                  text: 'Normal Button',
                  buttonType: PropertyPaneButtonType.Normal,
                  onClick: this.buttonClick
                }),
                PropertyPaneButton('', {
                  text: 'Normal Button',
                  buttonType: PropertyPaneButtonType.Icon,
                  icon: 'Emoji2',                  
                  onClick: this.buttonClick
                }),
                PropertyPaneHorizontalRule(),
                PropertyPaneLabel('', {
                  text: 'To learn more about SPFx client side web parts ...'
                }),
                PropertyPaneLink('', {
                  href: 'http://aka.ms/spfx',
                  text: "SharePoint Framework Documentation",
                  target: '_blank'
                })
              ]
            }
          ]
        }
      ]
    };
  }

  private titleValidator(value: string): string {
    if (value.length < 10) {
      return "Minimum length for title is 10 characters!";
    } else if (value.length > 30) {
      return "Maximum length for title is 30 characters!";
    } else {
      return "";
    }
  }

  private loadSelectionOptions(): Array<IPropertyPaneDropdownOption> {
    var result: Array<IPropertyPaneDropdownOption> = new Array<IPropertyPaneDropdownOption>();
    result.push({ key: 'R', text: 'Red'});
    result.push({ key: 'G', text: 'Green'});
    result.push({ key: 'B', text: 'Blue'});

    return(result);
  }

  private primaryButtonClick(previousValue: any): any { 
    var newValue : number = previousValue + 1;
    return(newValue);
  }

  private buttonClick(previousValue: any): any { 
    alert('You clicked the button!');
  }
}
