const router = require('express').Router();

const productRouter = require('./products/index.js')

router.use('/products',productRouter);

module.exports = router;