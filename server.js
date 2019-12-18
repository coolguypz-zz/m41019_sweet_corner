const express = require('express')
const port = process.env.PORT || 3001;
const routes = require('./routes/index.js');

const app = express();

//check if req has body, change to quantity=5&my%20name=scott parse to object

app.use(express.urlencoded({extends:false}))

app.use(routes);

app.listen(port,()=>{console.log("Server listening on localhost: "+ port)});