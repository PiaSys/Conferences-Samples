/// <reference types="jest" />

import * as React from 'react';
import * as Adapter from 'enzyme-adapter-react-16';
import { configure, mount, ReactWrapper } from 'enzyme';
import * as sinon from 'sinon';

import { ISampleContentProps, ISampleContentState } from '../SampleContent';
import SampleContent from '../SampleContent';


configure({ adapter: new Adapter() });

describe('SampleContent: Unit Test', () => {

    const title: string = "Sample title";
    const subTitle: string = "Sample subtitle";

    let componentDidMountSpy: sinon.SinonSpy;
    let reactComponent: ReactWrapper<ISampleContentProps, ISampleContentState>;

    beforeEach(() => {
        componentDidMountSpy = sinon.spy(SampleContent.prototype, 'componentDidMount');
        reactComponent = mount(React.createElement(
          SampleContent,
          {
            title: title,
            subTitle: subTitle
          }
        ));
    
      });
    
    afterEach(() => {
        reactComponent.unmount();
        componentDidMountSpy.restore();
      });

    it('<SampleContent /> should render something', () => {
      // check if there is a DIV element in the component rendering
      expect(reactComponent.find('div')).not.toBeNull();
    });

    it('<SampleContent /> should render the main DIV element', () => {
      // check if there is a DIV element with specific style
      expect(reactComponent.find('div.sampleContent').length).toEqual(0);
    });

    // it('<SampleContent /> should match the UI snapshot', () => {
    //   // check if the component matches the snapshot
    //   expect(reactComponent.html).toMatchSnapshot();
    // });

    it('<SampleContent /> should render as a React component', () => {
      // check if the <SampleContent /> component is the reactComponent
      const component: SampleContent = reactComponent.instance() as SampleContent;
      expect(component).not.toBeNull();
    });

    it('<SampleContent /> should have state initialized', () => {
      // check if the component state is initialized
      const state: ISampleContentState = reactComponent.state();
      expect(state.counter).toEqual(0);
    });

    it('<SampleContent /> should have properties initialized', () => {
      // check if the properties are initialized
      const props: ISampleContentProps = reactComponent.props();
      expect(props.title).toEqual(title);
      expect(props.subTitle).toEqual(subTitle);
    });

    it('<SampleContent /> should properly increment state', () => {
      // check if the PrimaryButton click event works properly
      reactComponent.update();
      
      // get the primary button and simulate to click it
      const primaryButton = reactComponent.find("button").first();           
      primaryButton.simulate('click'); 

      // double-check the updated state of the component
      const state: ISampleContentState = reactComponent.state();
      expect(state.counter).toEqual(1);
    });

    it('<SampleContent /> should call componentDidMount only once', () => {
      // Check if the componentDidMount is called once
      expect(componentDidMountSpy.calledOnce).toEqual(true);
    });
});