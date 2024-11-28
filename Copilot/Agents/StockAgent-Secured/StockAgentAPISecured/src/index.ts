import { app } from '@azure/functions';
import * as path from 'path';

app.setup({
    enableHttpStream: true,
});