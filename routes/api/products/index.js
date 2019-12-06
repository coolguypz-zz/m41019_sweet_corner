const router = require('express').Router();
/*
same as 
const express = require('express')
const router = express.Router();
*/

const getAllProducts = require('./get_all')
const getProductDetails = require('./get_details')

router.get('/',getAllProducts);
router.get('/:product_id',getProductDetails)

module.exports = router;