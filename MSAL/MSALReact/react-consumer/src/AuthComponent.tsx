import React from 'react';
import { useMsal } from '@azure/msal-react';
import { loginRequest } from './authConfig';

const handleLogin = (instance: any) => {
  instance.loginPopup(loginRequest).catch((e: any) => {
    console.error(e);
  });
};

const handleLogout = (instance: any) => {
  instance.logoutPopup().catch((e: any) => {
    console.error(e);
  });
};

const AuthComponent: React.FC = () => {
  const { instance, accounts } = useMsal();

  return (
    <div>
      {accounts.length > 0 ? (
        <div>
          <p>Welcome, {accounts[0].username}</p>
          <button onClick={() => handleLogout(instance)}>Logout</button>
        </div>
      ) : (
        <button onClick={() => handleLogin(instance)}>Login</button>
      )}
    </div>
  );
};

export default AuthComponent;
