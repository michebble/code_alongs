
// function expression
var sayHi = function( name ) {
  return `hi ${ name }`
}

// arrow function
var sayHi = ( name ) => {
  return `hi ${ name }`
}

// one line arrow: no curly, not retrun
var sayHi = name => `hi ${ name }`

// before es6
var sayHi = function() {
  return "hi"
}

// arrow
var sayHi = () => {
  return "hi"
}

const languages = ['ruby', 'js', 'php']

var upcasedLanguages = function(lang) {
  return lang.toUpperCase()
}

languages.map( lang => lang.toUpperCase() )