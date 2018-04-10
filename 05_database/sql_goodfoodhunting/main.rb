     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'

get '/' do
  conn = PG.connect(dbname: 'goodfoodhunting')
  results = conn.exec('select * from dishes;')
  @dishes = results
  erb :index
end





