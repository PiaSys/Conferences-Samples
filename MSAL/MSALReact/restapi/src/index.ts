import express from 'express';
import { validateAccessToken } from './authMiddleware';
import { validateScope } from './scopeMiddleware';

const cors = require('cors');
const app = express();
const port = 3001;

const corsOptions = {
    origin: 'http://localhost:3000',
    optionsSuccessStatus: 200,
  };
  
app.use(cors(corsOptions));
app.use(express.json());

app.get('/api/protected', validateAccessToken, validateScope(['RestApi.Consumer.ReadWrite']), (req, res) => {
  res.send({ result: `Hello ${(req as any).user.name}, you have access to this protected resource!` });
});

app.listen(port, () => {
  console.log(`API is running at http://localhost:${port}`);
});
