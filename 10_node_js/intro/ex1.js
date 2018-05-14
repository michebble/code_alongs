

// console.log(process.argv[2]) // 

// write a CLI program that sums numbers passed in


var output = 0;

debugger

for (var i = 2; i < process.argv.length; i++) {
  output += Number(process.argv[i]);
}
console.log(output);

