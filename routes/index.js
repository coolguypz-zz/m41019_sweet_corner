const router = require('express').Router();
const apiRouter = require('./api');
const imageRouter = require('./images/index.js');

router.use('/api',apiRouter);
router.use('/images',imageRouter);

module.exports = router;