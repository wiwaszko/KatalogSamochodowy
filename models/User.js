var mysql = require('mysql');

var User = mysql.createConnection({
	host:'localhost',
	user:'root',
	password:'',
	database:'Projekt'
})

User.connect();

module.exports = User;