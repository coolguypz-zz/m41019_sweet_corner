const router = require('express').Router();

const addItemToCart = require('./add_to_cart.js');
const itemQTY = require('./item_quantity')

router.post('/:product_id',addItemToCart);
router.patch('/:item_id',itemQTY);

// router.post('/:product_id',require('./add_to_cart'));

module.exports = router;