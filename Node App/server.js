//Dependencies
var express = require('express');
var mongoose = require('mongoose');
var bodyParser = require('body-parser');

var path = __dirname + '/views/';

var mongodb_connection_string = 'mongodb://localhost/beerdb';

if(process.env.OPENSHIFT_MONGODB_DB_URL){
	mongodb_connection_string = process.env.OPENSHIFT_MONGODB_DB_URL;
}

//MongoDB
mongoose.connect(mongodb_connection_string);

// Express
var app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Routes
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

app.use('/api', require('./routes/api'));

app.get("/",function(req,res){
  res.sendFile(path + "index.html");
});

app.get("/confirm",function(req,res){
  res.sendFile(path + "confirm.html");
});

app.get("/newBeer",function(req,res){
  res.sendFile(path + "newBeer.html");
});

app.get("/edit",function(req,res){
  res.sendFile(path + "edit.html");
});

// Start server
var server_port = process.env.OPENSHIFT_NODEJS_PORT || 8080;
var server_ip_address = process.env.OPENSHIFT_NODEJS_IP || '127.0.0.1';

app.listen(server_port, server_ip_address, function () {
  console.log( "Listening on " + server_ip_address + ", port " + server_port );
});