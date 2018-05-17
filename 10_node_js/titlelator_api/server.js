const express = require('express')
const _ = require('lodash')
const cors = require('cors')

const app = express()
const PORT = 7777
app.listen(PORT, () => {
  console.log(`listening on ${PORT}`)
})

app.use(cors())

app.get('/', (req, res) => {
  res.send('hello world')
})

app.get('/api/titles', (req, res) => {

  const keyword = req.params.keyword
  
  const titles = [
    `How I learned to love ${keyword} `,
    `${keyword}, ${keyword}, ${keyword}`,
    `${keyword}: The truth`,
    `10 things I hate about ${keyword}`
  ]

  const data = {
    title: _.sample(titles)

  }
  
  res.json( data )
})