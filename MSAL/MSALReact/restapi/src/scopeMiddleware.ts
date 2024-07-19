import { Request, Response, NextFunction } from 'express';

export const validateScope = (requiredScopes: string[]) => {
  return (req: Request, res: Response, next: NextFunction) => {
    const user = (req as any).user; 
    
    if (!user || !user.scp) {
      return res.status(403).send('Forbidden');
    }

    const tokenScopes = user.scp.split(' ');

    const hasRequiredScopes = requiredScopes.every(scope => tokenScopes.includes(scope));

    if (!hasRequiredScopes) {
      return res.status(403).send('Forbidden');
    }

    next();
  };
};
