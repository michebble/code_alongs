var request = require('request');

var lib = require('./lib.js');


var url = `http://api.openweathermap.org/data/2.5/weather?q=${process.argv[2]}&APPID=150fe397273b0898d4e8b500237412d9`
debugger
request(url, function (error, response, body) {
  var response = body;
  var obj = JSON.parse(response);
  var temp = Number(obj.main.temp);
  var celsius = lib.convertToCelsius(temp);
  console.log(celsius.toFixed(2))
});



//in lib.js you have function
//to convert f to c
//export that function//require it in this file and use it

//todo - send a request to api console log temp