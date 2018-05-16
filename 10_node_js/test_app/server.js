const express = require('express')
const app = express()

app.get('/', (req, res) => {
  res.send('winning!')

})

app.listen('8888', () => {
  console.log('listening on 8888')
})