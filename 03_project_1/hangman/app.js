console.log('ready to guess?');
var wordList = ['JAZZ', 'BANANA', 'CACTUS', 'RHYTHM', 'REST', 'SODAPOP', 'AWKWARD', 'CRYPTO', 'AGILE', 'HAIKU']

var guessingWord = [];
var wrongLetters = [];
var guessedLetter = '';
var secretWord = [];
var guessesRemaining = 0;

var winPhrases = ['WINNING!', 'A++', 'NICE WORK', 'NO WAY!', 'TOO COOL', 'HOT STUFF'];
var losePhrases = ['OUCH!', 'TRY AGAIN', 'SHUCKS', 'F'];

var remainingGuessNum = document.querySelector('.remaining-guesses');
var guessedLetterList = document.querySelector('.guesses');
var board = document.querySelector('.play-area');
var message = document.querySelector('.message');

var guessesTally = function(num) {
  if (num === 0) {
    return 'N0 MORE CAKE!'
  } else {
    return '🍰 '.repeat(num);
  } 
}

var resetBoard = function() {
  secretWord = wordList[Math.floor(Math.random() * wordList.length)];
  for (var i = 0; i < secretWord.length; i++) {
    guessingWord.push('_');
  }
  guessesRemaining = 10;
  board.textContent = guessingWord.join(' ');
  remainingGuessNum.textContent = guessesTally(guessesRemaining);
  
}

//A-Z 65-90 a-z 97-122
var validGuess = function(keyPress) {
  return (keyPress >= 65 && keyPress <= 90) || (keyPress >= 97 && keyPress <= 122)
}

var continueGame = function() {
  if (guessesRemaining === 0) {
    message.textContent = losePhrases[Math.floor(Math.random() * losePhrases.length)]
    document.removeEventListener('keypress', guess);
  }
  if (secretWord === guessingWord.join('')) {
    message.textContent = winPhrases[Math.floor(Math.random() * winPhrases.length)];
    document.removeEventListener('keypress', guess); 
  } 
}

var checkLetter = function(letter) {
  if (secretWord.indexOf(letter) !== -1) {
    for (var i =0; i < secretWord.length; i++) {
      if (secretWord[i] === letter) {
        guessingWord[i] = letter; 
        board.textContent = guessingWord.join(' ');
      }
    }
  } else if (wrongLetters.indexOf(letter) !== -1) {
    console.log('aleady guessed')
  } else {
    wrongLetters.push(letter);
    remainingGuessNum.textContent = guessesTally(guessesRemaining -= 1);
    guessedLetterList.textContent = wrongLetters.join('');
  }
}


  
var guess = function() {
  var keyPress = event.which || event.keyCode;
  if (validGuess(keyPress)) {
    guessedLetter = String.fromCharCode(keyPress).toUpperCase()
    checkLetter(guessedLetter);
    continueGame();
  } 
}
resetBoard();
document.addEventListener('keypress', guess);
