const db = require('../../../../db')
const {buildUrl,getCartTotals} = require('../../../../helpers/index')

module.exports = async (req,res,next) => {

  try {
    
    let {cart} = req;
    const { item_id } = req.params;
    const { quantity } = req.body;

    let output = {
      cartId:null,
      message: "There is nothing add"
    }

   
    const [result] = await db.execute(`
                        UPDATE cartItems as ci SET quantity = ci.quantity + ?
                        WHERE 
                        ci.pid = ?`,[quantity,item_id])
   
    const [itemData] = await db.query(`  
        SELECT c.pid as cartId, ci.createdAt as added, p.cost as 'each',ci.pid as itemId, 
        p.name as name,p.pid as productId ,ci.quantity as quantity,
        (p.cost * ci.quantity) as cost,i.altText as altText,
        i.type as type, i.file as file from 
        cartItems as ci 
        JOIN
        cart as c on ci.cartId = c.id
        JOIN
        products as p on p.id = ci.productId
        JOIN
        images as i on i.productId = p.id 
        WHERE ci.pid = ? and c.id = ? and i.type = "thumbnail" `,[item_id,cart.id])

        const formatedCartItems = itemData.map(item => {

          const { cartId,altText,file,type,...i} = item;
          output.cartId = cartId;

          return{
            ...i,
            thumbnail:{
              altText,
              url:buildUrl(req,type,file)
            },
          }
      })

      delete output.message;
      [output.item] = formatedCartItems;
      output.total = await getCartTotals(cart.id)

    res.send({
      output,
      message: "Added "+ quantity +" "+ output.item.name +" cupcakes to cart"
    });
  } catch (error) {
    next(error)
  }

}

