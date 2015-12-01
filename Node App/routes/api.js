//Dependencies
var express = require('express');
var router = express.Router();

// Models
var Beer = require('../models/beer');

// Routes
Beer.methods(['get', 'put', 'post', 'delete']);
Beer.register(router, '/beers');



//Return router
module.exports = router;