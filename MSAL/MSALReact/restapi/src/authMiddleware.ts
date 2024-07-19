import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';
import jwksClient from 'jwks-rsa';
import { msalConfig, tokenValidationConfig } from './authConfig';

const client = jwksClient({
  jwksUri: `${msalConfig.auth.authority}/discovery/v2.0/keys`,
});

const getKey = (header: any, callback: any) => {
  client.getSigningKey(header.kid, (err: any, key: any) => {
    if (err) {
      callback(err, null);
    } else {
      const signingKey = key.getPublicKey();
      callback(null, signingKey);
    }
  });
};

export const validateAccessToken = (req: Request, res: Response, next: NextFunction) => {
  const authHeader = req.headers.authorization;

  if (!authHeader || !authHeader.startsWith('Bearer ')) {
    return res.status(401).send('Unauthorized');
  }

  const token = authHeader.split(' ')[1];

  jwt.verify(token, getKey, { algorithms: ['RS256'], issuer: tokenValidationConfig.issuer, audience: tokenValidationConfig.audience }, (err, decoded) => {
    console.log(err);
    if (err) {
      return res.status(401).send('Unauthorized');
    }

    console.log(decoded);
    (req as any).user = decoded;
    next();
  });
};
