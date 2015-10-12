var express = require('express');
var app = express();
var mongojs =require('mongojs');
var db = mongojs('beerList',['beerList']);
var bodyParser = require('body-parser');

app.use(express.static(__dirname + "/public"));
app.use(bodyParser.json());

app.get('/beerList',function (req,res){
	console.log("I received a get request!");

	db.beerList.find(function (err,docs){
		console.log(docs);
		res.json(docs);
	});
});

app.post('/beerList',function(req,res){
	console.log(req.body);
	db.beerList.insert(req.body,function(err,doc){
		res.json(doc);
	})
});


app.listen(3000);
console.log("server running on port 3000 :");
