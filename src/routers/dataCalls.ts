import Router, {type Request, type Response, type NextFunction} from 'express';

const dataRoutes = Router();

dataRoutes.use((req: Request, res: Response, next: NextFunction) => {
    console.log("This is the user route");
    next();
});

dataRoutes.get('/{:id}', (req: Request, res: Response) => {
    if (req.params.id) {
        const id: string | string[] = req.params.id;
        console.log(`User id is ${id}`);
        res.send(`User id is ${id}`);
    }
    else {
        res.send('Users Route');
    }
    
})

dataRoutes.post('/', (req: Request, res: Response) => {
    let request: any = req.body;
    console.log(request.name)
    res.status(200).send('Received');
});

export default dataRoutes