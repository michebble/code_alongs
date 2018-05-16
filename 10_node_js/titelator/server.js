const express = require('express')
const _ = require('lodash')
const request = require('request')
const querystring = require('querystring');

const app = express()
const PORT = 8888;

app.listen(PORT, () => {
  console.log(`listening on ${PORT}`)
})

// using templating & storing them in views/
app.set('views', './views')
app.set('view engine', 'ejs')

app.use(express.static('public')) //handles public static assests

app.use(function(req, res, next){
  console.log(`${req.path} ${req.method}`)
  next()
})

app.get('/', (req, res) => {
  res.render('home')
})

app.get('/titlate', (req, res) => {

  
  const titles = [`All you wanted to know about ${req.query.keyword}, but were too afraid to ask`, `${req.query.keyword} for dogs`, `${req.query.keyword}, ${req.query.keyword}, ${req.query.keyword}`]

  res.send(_.sample(titles))
})

app.get('/movies', (req, res) => {
  const qs = {
    apikey: '2f6435d9',
    t: req.query.keyword
  }
  const url = `http://omdbapi.com/?${querystring.stringify(qs)}`
  const options = {
    url: url,
    json: true
  }
  request(options, function(error, omdbRes, data) {
    
    res.render('details', {movie: data})
  })
  
})


app.get('/about', (req, res) => {
  res.send('about this dude')
})

