/// <reference types="jest" />

import * as React from 'react';
import * as Adapter from 'enzyme-adapter-react-16';
import { configure, mount, ReactWrapper } from 'enzyme';

import { ITestingSampleProps } from '../ITestingSampleProps';
import TestingSample from '../TestingSample';

configure({ adapter: new Adapter() });

describe('Testing Sample: Unit Test', () => {

    const title: string = "Sample title";
    const subTitle: string = "Sample subtitle";

    let reactComponent: ReactWrapper<ITestingSampleProps, {}>;

    beforeEach(() => {
        reactComponent = mount(<TestingSample title={title} subTitle={subTitle} />);
      });
    
    afterEach(() => {
        reactComponent.unmount();
      });

    it('Should do something', () => {
        expect(true).toBeTruthy();
      });

    it('<TestingSample /> should render something', () => {
        expect(reactComponent.find('div')).not.toBeNull();
      });

    it('<TestingSample /> should have properties initialized', () => {
        expect(reactComponent.prop('title')).toEqual(title);
        expect(reactComponent.prop('subTitle')).toEqual(subTitle);
      });
});