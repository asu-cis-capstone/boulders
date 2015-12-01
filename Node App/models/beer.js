// Dependencies
var restful = require('node-restful');
var mongoose = restful.mongoose;

//Schema
var beerSchema = new mongoose.Schema({
	name: String,
	style: String,
	pour: String,
	abv: String,
	price: String,
	brewery: String,
	location: String,
	desc: String,
	ontap: Boolean,
	bottle: Boolean
});

//Return model
module.exports = restful.model('Beers', beerSchema);