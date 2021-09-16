import React, { useState, useEffect } from 'react';
import './App.css';
import { Providers, ProviderState } from '@microsoft/mgt-element';
import { FileList, Login } from '@microsoft/mgt-react';

function useIsSignedIn(): [boolean] {
  const [isSignedIn, setIsSignedIn] = useState(false);

  useEffect(() => {
    const updateState = () => {
      const provider = Providers.globalProvider;
      setIsSignedIn(provider && provider.state === ProviderState.SignedIn);
    };

    Providers.onProviderUpdated(updateState);
    updateState();

    return () => {
      Providers.removeProviderUpdatedListener(updateState);
    }
  }, []);

  return [isSignedIn];
}

function App() {

  const [isSignedIn] = useIsSignedIn();

  return (
    <div className="App">
      <header>
        <Login />
      </header>
      <div>
        {isSignedIn &&
          <FileList fileListQuery="me/drive/root/children" 
            pageSize={5} fileExtensions={["docx","xlsx"]} />}
      </div>
    </div>
  );
}

export default App;
