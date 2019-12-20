const router = require('express').Router();
const fs = require('fs');
const path = require('path');

// Routes  /images : Get /images/:type/:file

router.get('/:type/:file',(req,res)=>{

  const {type,file} = req.params;

  const imgPath = path.resolve(__dirname,type,file);

  if(fs.existsSync(imgPath)){
    res.sendFile(imgPath);
    return;
  }

  res.status(404).send({
    message:"Not Found"
  })

})

module.exports = router;