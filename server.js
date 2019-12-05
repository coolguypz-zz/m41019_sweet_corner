const express = require('express')
const port = process.env.PORT || 3001;

const app = express();

app.get("/",(req,res)=>{
  res.send({
    message:"this is a test"
  })
})

app.listen(port,()=>{console.log("Server listening on localhost: "+ port)});