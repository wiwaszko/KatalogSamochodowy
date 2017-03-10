var mysql = require('mysql');

var Car = mysql.createConnection({
	host:'localhost',
	user:'root',
	password:'admin',
	database:'projekt'
})

Car.connect();

Car.getCars = function(callback){
		var sql = 'SELECT * FROM Car';
		Car.query(sql,function(error,rows){
            console.log(rows);
            //console.log(error);
			callback(rows);
		});	
};
Car.addCar = function(car,callback){
    var sql = 'INSERT INTO Car(model,engineCapacity,enginePower,fuel,wheelDrive,carDescription,modelYear,brandName,factoryName) VALUES (?)';
    Car.query(sql,car,function(err,res){
        if(err) throw err;
        
        // console.log('Car ID:'.res.id);
    });
};

module.exports = Car;
