     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

get '/' do
  conn = PG.connect(dbname: 'goodfoodhunting')
  sql = conn.exec('select * from dishes;')
  @dishes = sql
  erb :index
end

get '/dishes/new' do
  erb :new
end

post '/dishes' do
  
  # 1. get the input from the form
  # params #{ name: '', image_url: '' }
 
  # 2. save it in the database - insert a new record
  sql = "INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }', '#{ params[:image_url] }');"
  # insert into dishes (name, image_url) values ('cake', 'www.cake.com/cake.jpg')
  conn = PG.connect(dbname: 'goodfoodhunting')
  conn.exec(sql)
  redirect to ('/')
end


get "/dishes" do

    sql = "SELECT * FROM dishes WHERE id = #{params[:id]};"
    conn = PG.connect(dbname: 'goodfoodhunting')
    query_result = conn.exec(sql)
    
    if query_result.first.nil?
      redirect to('/')
    end
    @dishes = query_result.first
    erb :dish
  
end



