var Car = require('../models/Car.js');
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
 // res.render('index', { title: 'Express' });
    	
		res.render('index');

});
router.get('/cars.html',function(req,res,next){
	Car.getCars(function(dane){
            console.log(dane);
		res.render('cars',{dane:dane});
	});
});
router.post('/cars.html',function(req,res,next){
    
   // console.log(req.body);
    console.log("fuel = " + req.body['fuel']);
    console.log("carDescription = " + req.body['carDescription']);
    console.log("factoryName = " + req.body['factoryName']);

    
    var car = { 
            model: req.body[model],
            engineCapacity: req.body.engineCapacity,
            enginePower: req.body.enginePower,
            fuel: req.body.fuel,
            wheelDrive: req.body.wheelDrive,
            carDescription: req.body.carDescription,
            modelYear: req.body.modelYear,
            brandName: req.body.brandName,
            factoryName: req.body.factoryName
            };
    Car.addCar(car,function(){
        console.log('Dodano pomyslnie samochod');
    });

res.end();
});

module.exports = router;
