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

console.log("App running on port 3000");
app.listen(3000);