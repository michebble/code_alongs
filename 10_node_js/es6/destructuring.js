function getFavColor() {
  return ['lime green', 'pink']
}

// var colors = getFavColor()

// var favColor = colors[0]

// var [favColor, meh] = getFavColor()

// console.log(favColor)

// function getPerson() {
//   return {
//     name: 'codebusters',
//     number: 15
//   }
 
// }

// var {name: wdiName} = getPerson()

// console.log(wdiName)

// var {name: name, number: number} = getPerson()

// var { name , number } = getPerson()

// console.log(`${name} ${number}`)

function getWdi() {
  return {
    name: 'codebusters',
    number: 15,
    coolbeans: {
      stuff: 'meh'
    }
  }
}

// var {name, { stuff } } = getWdi() //not yet

console.log(name)
console.log(stuff)