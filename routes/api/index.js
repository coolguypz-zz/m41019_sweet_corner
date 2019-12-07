const router = require('express').Router();

const cartRouter = require('./cart/index.js');

const productRouter = require('./products/index.js');

router.use('/products',productRouter);

router.use('/cart',cartRouter);

module.exports = router;