const db = require('../../../../db/index');
const jwt = require('jwt-simple');
const cartJwt = require('../../../../config/cart_jwt.json');
const {buildUrl} = require('../../../../helpers')

module.exports = async (req, res) => {

  const { product_id } = req.params;
  const { quantity = 1 } = req.body;   // default qty = 1 if no send anything
  let { cart,token } = req;

  if(isNaN(quantity) || quantity < 1){
    res.status(422).send({
      message:"invalid quantity received"
    })
    return;
  }


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
    await db.execute('update cartItems set quantity = quantity + ? where id = ?',[quantity,cartItem.id])
    // increase the quantity of the existing cartItem
  }else{
    const [itemsResult] = await db.execute(`
    insert into cartItems (pid,cartId,productId,quantity) values (UUID(),?,?,?)`,[cart.id,product.id,1])
  }

  const [[item]] = await db.query(`
                    SELECT c.pid as cartId, ci.createdAt as added, p.cost as 'each',ci.pid as itemId, 
                    p.name as name,p.pid as productId ,ci.quantity as quantity,
                            (p.cost * ci.quantity) as cost 
                            from
                            cartItems as ci
                            JOIN
                            cart as c on ci.cartId = c.id
                            JOIN
                            products as p on p.id = ci.productId
                            WHERE cartId = ? and p.id = ?`,[cart.id,product.id])

  
  const [[thumbnail]] = await db.query(`select i.altText as altText,
                        i.type as type, i.file as file from 
                        images as i
                        JOIN
                        cartItems as ci
                        JOIN
                        cart as c on ci.cartId = c.id
                        JOIN
                        products as p on p.id = ci.productId
                        WHERE cartId = ? and p.id = ?`,[cart.id,product.id])

  const [total] = await db.query(`
      SELECT ci.quantity FROM cart as c JOIN cartItems as ci WHERE c.id = ?
  `,[cart.id])

  const message = `${quantity} ${product.name} add to cart`;
  /* 
    Check for existing cart

    If no cart then make cart



    Else create cart item for product

    create a message to send back to user of what was added

  */


  res.send({
    cartId:item.cartId,
    cartToken:token,
    item:{...item,
      thumbnail:{
        altText:thumbnail.altText,
        url:buildUrl(req,thumbnail.type,thumbnail.file)
      },
      total:item.cost
    },
    message,
    total:{
      cost:item.cost,
      items:total.length
    }
  })
}

