/*
Let's make a guessing game
setup a number
the user should be asked to to guess a number
output a happy message if the guess is correct
output a sad message if guess is wrong, asked to guess the number again until the end of time


- variables
- prompt()
- if statement
- output
- loop



*/
console.log('guessing game');
input = Number(prompt('Enter a number between 1 and 50.'))



var secret = 42;
var input;

while (input !== 42) {
  // prompt for input
  if (input === secret) {
    console.log('You are lucky.');
  } else {
	console.log('Too bad. Try again.');
	input = Number(prompt('Enter another number between 1 and 50.'));
  }
}
//loop
//condition