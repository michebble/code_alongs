

// console.log(process.argv[2]) // 

// write a CLI program that sums numbers passed in

var numbers = process.argv;
var output = 0;
for (var i = 2; i < numbers.length; i++) {
  output += Number(numbers[i]);
}
console.log(output);

