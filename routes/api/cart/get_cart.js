const db = require('../../../db');
const {buildUrl,getCartTotals} = require('../../../helpers/index')

module.exports = async (req,res,next) => {

 try {
    const {cart} = req;

    let output = {
      cartId:null,
      message:"No active cart"
    }

  if(cart){

  const [cartItems] = await db.query(`
  SELECT c.pid AS cartId, ci.createdAt AS added, p.cost AS \`each\`, ci.pid AS itemId, p.name,p.pid AS productId,quantity, (p.cost * quantity) AS total, altText, type, file
        FROM cartItems AS ci
        JOIN cart AS c ON ci.cartId=c.id
        JOIN products AS p ON ci.productId=p.id
        JOIN images AS i ON p.id=i.productId AND i.type='thumbnail'
        WHERE ci.cartId=?`,[cart.id])
  
      const formatedCartItems = cartItems.map(item => {
          const { cartId,altText,file,type,total,...i} = item;
          output.cartId = cartId;
          return{
            ...i,
            thumbnail:{
              altText,
              url:buildUrl(req,type,file)
            },
            total
          }
      })

      delete output.message;
      output.items = formatedCartItems;
      output.total = await getCartTotals(cart.id)
    }

      res.send(output)

  } catch (error) {
      next(error)
   }
}

