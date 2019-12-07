const db = require('../../../../db/index'); 

module.exports = async (req,res) =>{

  let {cart} = req;

  if (!cart){
    const [[cartStatus]] = await db.query(`select id from cartStatuses where mid = "active"`)

    console.log("cartStatus: " , cartStatus);
    const [result] = await db.query(`insert into cart (pid,statusId) values (UUID(),?)`,[cartStatus.id])
    console.log("result: ", result);
  }

  /* 
    Check for existing cart

    If no cart then make cart

    Does item already exist in cart

    If product already in cart , increase QTY

    Else create cart item for product

    create a message to send back to user of what was added

  */

  res.send({
    message:`add to cart for product_id: `
  })
}