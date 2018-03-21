console.log("function exercises") 

// why functions? why not?
// reuse
// scopes - global - everywhere has access
// scopes - local - only accessable by block of code
// readability
// portability
// becomes complicated



// input array of numbers, output -> sum
var sum = function (arrOfNumbers) {
  var total = 0
  for (var index = 0; index < arrOfNumbers.length; index++ ) {
    total = total + arrOfNumbers[index]
  }
  return total // what comes out
}
var numbers = [1, 2, 3, 4]


// var total = 0

// for (var index = 0; index < numbers.length; index++ ) {
//   total = total + numbers[index]
// }

console.log(sum(numbers))