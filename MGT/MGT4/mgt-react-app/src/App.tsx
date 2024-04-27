import React from 'react';
import logo from './logo.svg';
import './App.css';
import { useIsSignedIn, Login, FileList, PersonCard } from '@microsoft/mgt-react';

function App() {
  const [isSignedIn] = useIsSignedIn();

  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <Login />
      </header>
      <div>
        {isSignedIn &&
          <PersonCard personQuery="me"></PersonCard>}
        {isSignedIn &&
          <FileList fileListQuery="me/drive/root/children"
            enableFileUpload={true}
            pageSize={5} fileExtensions={["docx","xlsx"]} />}
      </div>
    </div>
  );
}

export default App;
