const express = require('express')
const port = process.env.PORT || 3001;
const routes = require('./routes/index.js');
const path = require("path");

const app = express();

app.use(express.static(path.resolve(__dirname,'client','dist')))

app.use(routes);

app.get('*',(req,res)=>{
  res.sendFile(path.resolve(__dirname,'client','dist','index.html'))
})

app.listen(port,()=>{console.log("Server listening on localhost: "+ port)});