import Router, {type Request, type Response} from 'express';

const helloWorldRoute = Router();

helloWorldRoute.get('/', (req: Request, res: Response) => {
    res.send('Hello World');
})

export default helloWorldRoute