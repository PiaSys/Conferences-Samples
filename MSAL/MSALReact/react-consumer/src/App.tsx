import React from 'react';
import logo from './logo.svg';
import './App.css';

import AuthComponent from './AuthComponent';
import UserComponent from './UserComponent';
import RestAPIComponent from './RestAPIComponent';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <AuthComponent />
        <UserComponent />
        <RestAPIComponent />
      </header>
    </div>
  );
}

export default App;
