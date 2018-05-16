// animals name toys

class Animal {

  constructor(name = 'mike') { // initialize
    this.name = name
  }

  getName() {
    return this.name.toUpperCase()
  }

}

var a1 = new Animal()
var a2 = new Animal('codebusters')

console.log(a1)
console.log(a2.getName())