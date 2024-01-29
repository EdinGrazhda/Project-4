const express = require('express');
const app = express();
const port = 3000;  
const bodyParser = require('body-parser');
const mydb= require('./database/db');

app.use(express.json());

const userRouter = require('./Routes/Users');
const eventRouter = require('./Routes/Events');
const joinRouter = require('./Routes/Joins');
const nodeMailer = require('./Routes/NodeMailer');

app.use('/user', userRouter);
app.use('/event', eventRouter);
app.use('/join', joinRouter);
app.use('/email',nodeMailer);

app.listen(port,()=>{
    console.log(`Listening port ${port}`);
})