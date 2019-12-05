const express = require('express')
const port = process.env.PORT || 3001;
const db = require('./db/index');
const {buildUrl} = require('./helpers/index');

const app = express();

app.get("/api/products",async (req,res)=>{

  try {
    const [results] = await db.query(
      `select p.pid as id, caption,cost,p.name,i.pid as tnId,altText,file,type from 
      products as p 
      join 
      images as i 
      on
      i.productId = p.id
      where 
      i.type = 'thumbnail'
      `);

      const products = results.map(product =>{
        const {tnId,altText,file,type,...p} = product;

        return {
          ...p,
          thumbnail:{
            id:tnId,
            altText,
            file,
            type,
            url:buildUrl(req,type,file)
          }
        }
      })

    res.send({products})

  } catch (error) {
    console.log("ERROR: "+ error);
  }

  
})

app.listen(port,()=>{console.log("Server listening on localhost: "+ port)});