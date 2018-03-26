console.log('ready to guess?');

var secretWord = 'DOLPHIN';

var guessingWord = [];

var wrongLetters = [];

var guessedLetter = '';

var guessesRemaining = 10;

for (var i = 0; i < secretWord.length; i++) {
  guessingWord.push('_');
}

console.log(guessingWord.join(' '));
console.log('please guess a letter.')

//A-Z 65-90 a-z 97-122
var validGuess = function(keyPress) {
  return (keyPress >= 65 && keyPress <= 90) || (keyPress >= 97 && keyPress <= 122)
}

var continueGame = function() {
  if (guessesRemaining === 0) {
    console.log('No more guesses remaining.\nToo bad!')
  }
  if (secretWord === guessingWord.join('')) {
    console.log('You guessed the secret word!\nGood job!')
    document.removeEventListener('keypress', guess);
  }
}

var checkLetter = function(letter) {
  if (secretWord.indexOf(letter) !== -1) {
    for (var i =0; i < secretWord.length; i++) {
      if (secretWord[i] === letter) {
        guessingWord[i] = letter; 
      }
    }
  } else if (wrongLetters.indexOf(letter) !== -1) {
    console.log('aleady guessed')
  } else {
    wrongLetters.push(letter);
    guessesRemaining--;
    console.log('incorrect letters: ' + wrongLetters);
    console.log( guessesRemaining +' guesses remaining');
  }
  console.log('please guess a letter.');
}


  
var guess = function() {
  var keyPress = event.which || event.keyCode;
  if (validGuess(keyPress)) {
    guessedLetter = String.fromCharCode(keyPress).toUpperCase()
    checkLetter(guessedLetter);
    continueGame();
    console.log(guessingWord.join(' '));
  } 
}
  
document.addEventListener('keypress', guess);
