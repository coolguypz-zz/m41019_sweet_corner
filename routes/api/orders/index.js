const router = require('express').Router();
const guestCheckout = require('./guestCheckout')
const guestOrderDetails = require('./guestOrderDetails.js')

router.post('/guest',guestCheckout);

router.get('/guest/:order_id',guestOrderDetails)

module.exports = router;