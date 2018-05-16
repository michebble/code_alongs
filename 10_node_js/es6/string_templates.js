function greeting(name = 'jeff') {
  // return 'hello ' + name // before es6 
  return `hello ${ name }`
}

function greet(person) {// pass an object
  return `${person.firstName} ${person.lastName}`
}

console.log( greet({ firstName: 'mike', lastName: 'H'}) )