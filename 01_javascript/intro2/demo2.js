console.log('demo2')

/*
The Fortune Teller
why pay for a fortune teller when you can programme one yourself.
Store the following into variables:

number of children
partners name
geographic location
job title

output the fortune to the screen like so:
You will be X in Y, and married to Z with N kids


*/

var numberOfChildern = 'two'//prompt('How many children would you like?');
var partnerName = 'Mizuki' //prompt('Who do you like?');
var geoLocation = 'Melbourne' //prompt('Where would you like to live?');
var jobTitle = 'Web Dev' //prompt('What job would you like?');

var fortune = `You will be a ${jobTitle} in ${geoLocation}, and married to ${partnerName} with ${numberOfChildern} kids`;

console.log(fortune)

/*
Write a program to work out the area of a rectanale
collect the width & height from the user
calculatearea
display the result

*/

// let height = prompt('What is the height of the rectangle in centimetres?')
// let width = prompt('What is the width of the rectangle in centimetres?')	
// let area = width * height
// console.log('The area of your rectangle is ' + area + ' centimetres.')

let numOne = prompt('Enter first number.')
let numTwo = prompt('Enter second number.')
var plus = Number(numOne) + Number(numTwo);
console.log('Added together your numbers equal ' + plus)