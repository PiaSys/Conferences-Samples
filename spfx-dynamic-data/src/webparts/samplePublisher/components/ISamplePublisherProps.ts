import { IDynamicText, IDynamicNumber } from '../../../dataContracts';

export interface ISamplePublisherProps {
  onTextChanged: (text: IDynamicText) => void;
  onNumberChanged: (text: IDynamicNumber) => void;
}
