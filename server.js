const express = require('express')
const port = process.env.PORT || 3001;
const routes = require('./routes/index.js');

const app = express();

app.use(routes);

app.listen(port,()=>{console.log("Server listening on localhost: "+ port)});