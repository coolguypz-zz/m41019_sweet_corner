const router = require('express').Router();

const addItemToCart = require('./add_to_cart.js');

router.post('/:product_id',addItemToCart);

// router.post('/:product_id',require('./add_to_cart'));

module.exports = router;