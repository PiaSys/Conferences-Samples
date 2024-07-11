import React from 'react';
import logo from './logo.svg';
import './App.css';

import AuthComponent from './AuthComponent';
import UserProfile from './UserProfile';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <AuthComponent />
        <UserProfile />
      </header>
    </div>
  );
}

export default App;
