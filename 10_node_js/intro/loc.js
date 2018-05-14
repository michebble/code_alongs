// write CLI program 
// you can pass in a file name
// the program will count the number of loc and print it in the console.

// node loc.js ex1.js
// 15

// node loc.js ex2.js
// 14



var fs = require('fs');

var fileName = process.argv[2];

var buffer = fs.readFileSync(fileName);
var lines = buffer.toString().split('\n');
console.log(lines.length)