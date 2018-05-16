function greeting(name = 'jeff') {
  return 'hello ' + name
}

console.log( greeting('mike') )
console.log( greeting() )


function greet(person) {// pass an object
  return person.firstName + ' ' + person.lastName
}

console.log( greet({ firstName: 'mike', lastName: 'H'}) )