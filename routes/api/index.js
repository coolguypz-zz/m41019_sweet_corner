const router = require('express').Router();

const cartRouter = require('./cart/index.js');

const productRouter = require('./products/index.js');

const withCart = require('../../middleware/with_cart')

router.use('/products',productRouter);

router.use('/cart', withCart,cartRouter);

module.exports = router;