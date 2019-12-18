const db = require('../db/index')

module.exports.buildUrl = (req,type,file) =>{
  
  const protocol  = req.protocol;

  const host = req.get('host');

  const url = `${protocol}://${host}/images/${type}/${file}`;

  return url;
}

module.exports.getCartTotals = async (cartId) => {
  const [[totals]] = await db.query(`
  select SUM(quantity) as items, SUM(cost * quantity) as cost 
  from cartItems as ci 
  JOIN 
  products as p on ci.productId = p.id where cartId = ?`,[cartId]);

  return totals;
}