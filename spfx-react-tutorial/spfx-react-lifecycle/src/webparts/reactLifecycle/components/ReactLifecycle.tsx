import * as React from 'react';
import styles from './ReactLifecycle.module.scss';
import { IReactLifecycleProps } from './IReactLifecycleProps';
import { IReactLifecycleState } from './IReactLifecycleState';
import { escape } from '@microsoft/sp-lodash-subset';

export default class ReactLifecycle extends React.Component<IReactLifecycleProps, IReactLifecycleState> {

  /**
   *
   */
  constructor(props: IReactLifecycleProps) {
    super(props);
    console.log("Constructor");
    console.log(props);

    this.state = {
      dateTime: new Date()
    };
  }

  public componentWillMount(): void {
    console.log("componentWillMount");
  }

  public render(): React.ReactElement<IReactLifecycleProps> {

    console.log("render");

    return (
      <div className={ styles.reactLifecycle }>
        <div className={ styles.container }>
          <div className={ styles.row }>
            <div className={ styles.column }>
              <span className={ styles.title }>Welcome to SharePoint!</span>
              <h1>{this.props.description}</h1>
              <h2>{this.state.dateTime.toString()}</h2>
            </div>
          </div>
        </div>
      </div>
    );
  }

  private _interval: number;

  public componentDidMount(): void {
    console.log("componentDidMount");

    this._interval = setInterval(() => {
      this.setState({
        dateTime: new Date()
      });      
    }, 3000);
  }

  public shouldComponentUpdate(nextProps: Readonly<IReactLifecycleProps>, 
    nextState: Readonly<IReactLifecycleState>): boolean {    
      console.log("shouldComponentUpdate");
      console.log(nextProps);
      console.log(nextState);
      return(true);
  }

  public componentWillReceiveProps(nextProps: Readonly<IReactLifecycleProps>): void {
    console.log("componentWillReceiveProps");
    console.log(nextProps);
  }

  public componentWillUpdate(nextProps: Readonly<IReactLifecycleProps>, 
    nextState: Readonly<IReactLifecycleState>): void {
      console.log("componentWillUpdate");
      console.log(nextProps);
      console.log(nextState);
  }

  public componentDidUpdate(prevProps: Readonly<IReactLifecycleProps>, 
    prevState: Readonly<IReactLifecycleState>): void {
      console.log("componentDidUpdate");
      console.log(prevProps);
      console.log(prevState);
  }

  public componentWillUnmount(): void {
    clearInterval(this._interval);
  }
}
