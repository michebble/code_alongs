console.log("conditionals");

var age = 23;
var hasMoney = true;

if (age > 18 && hasMoney == true) {
  console.log('party till you drop');
} else {
  console.log('stay at home');
}

/*

the if statement

if (condition) {
	
}

---------

if (condiotn) {
	
} else {
	
}



    "I'm in the present!" if the year is equal to 2015
    "Whoa! Blast from the past!" if the year is less than 2015
    "Greetings from the future!" if the year is greater than 2015


*/

var d = new Date();
var year = d.getFullYear();

if (year < 2018) {
	console.log("Whoa! Blast from the past!");
} else if (year < 2018) {
	console.log("Greetings from the future!");
} else if (year === 2018){
	console.log("I'm in the present!");
} else if (year === 1999) {
	console.log("It's time to party!");
} 