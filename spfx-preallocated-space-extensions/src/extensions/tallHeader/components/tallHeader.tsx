import * as React from 'react';

const tallStyle = {
    margin: '40px',
    border: '5px solid blue',
    height: '150px'
  };

export class TallHeader extends React.Component<{}, {}> {

    public render(): React.ReactElement<{}> {

        window.alert('Click me to see the actual content of the header!');

        return (
            <div style={tallStyle}>
                <h1>This is my tall custom header!</h1>
            </div>
        );
    }
}