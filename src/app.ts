import express, { type Express, type Request, type Response } from 'express';
import helloWorldRoute from  '#routers/helloworld.ts'
import dataRoutes from '#routers/dataCalls.ts'

const app: Express = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/helloworld', helloWorldRoute);
app.use('/user', dataRoutes);

app.get('/', (req: Request, res: Response) => {
  res.send('Hello World!');
});

export default app;