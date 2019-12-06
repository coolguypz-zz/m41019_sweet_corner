const db = require('../../../db/index');
const {buildUrl} = require('../../../helpers/index');


module.exports = async (req,res)=>{

  const {product_id} = req.params;

  try {
    const [productDetails] = await db.execute(`select p.pid as id,caption,cost,description,p.name,
    i.pid as imId,altText,file,type
    from 
    products as p
    join
    images as i
    on 
    p.id  = i.productId
    where
    p.pid = ?`,[product_id]);

    let product = {};
    let images = {};

    productDetails.forEach(result => {

        const {imId,altText,file,type,...p} = result;

        let keyName = 'image';

        if(type === 'thumbnail'){
          keyName = type
        }
        
        product = p;

        images[keyName] = {
          id:imId,
          altText,
          file,
          type,
          url:buildUrl(req,type,file)
        }
    });
    res.send({
      ...product,
      ...images
    })

  } catch (error) {
    console.log("ERROR:"+error);
  }
}