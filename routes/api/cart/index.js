const router = require('express').Router();

const getCart = require('./get_cart')

const itemRouter = require('./items')

//Routes for /api/cart
router.use('/items',itemRouter);

router.use('/',getCart)

module.exports = router;
