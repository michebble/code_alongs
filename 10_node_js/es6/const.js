const favColor = 'lime green'

// favColor = 'pink'

console.log(favColor)

const account = {
  balance: 1000
}

const newAccount = Object.freeze(account)

account.balance = 100000000

console.log(account.balance)

// const account = Object.freeze{ data you don't want to change}