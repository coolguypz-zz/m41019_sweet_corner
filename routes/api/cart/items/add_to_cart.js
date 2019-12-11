const db = require('../../../../db/index');
const jwt = require('jwt-simple');
const cartJwt = require('../../../../config/cart_jwt.json');

module.exports = async (req, res) => {

  const { product_id } = req.params

  let { cart } = req;

  let token = null;

  //check if product_id is 

  const [[product = null]] = await db.execute(`select id,name from products where pid = ?`, [product_id])

  console.log("product: ", product);

  if(!product){
    res.status(404).send({
      message:`Product not found!`
    })
    return;
  }

  //if no cart then create a cart

  if (!cart) {
    const [[cartStatus]] = await db.query(`select id from cartStatuses where mid = "active"`)

    const [result] = await db.query(`insert into cart (pid,statusId) values (UUID(),?)`, [cartStatus.id])

    cart = {
      id: result.insertId
    }

    const tokenData = {
      cartId:cart.id,
      timeStemp:Date.now(),
    }
    token = jwt.encode(tokenData,cartJwt.secret)
  }


  //    Does item already exist in cart

  const [[cartItem = null]] = await db.query(`select id from cartItems where cartId = ? and productId = ?`,[cart.id,product.id])
  
  //    If product already in cart , increase QTY

  if(cartItem){
    // increase the quantity of the existing cartItem
  }else{
    const [itemsResult] = await db.execute(`
    insert into cartItems (pid,cartId,productId,quantity) values (UUID(),?,?,?)`,[cart.id,product.id,1])
  }

  const message = `1 ${product.name} add to cart`
  /* 
    Check for existing cart

    If no cart then make cart



    Else create cart item for product

    create a message to send back to user of what was added

  */

  res.send({
    message,
    token
  })
}