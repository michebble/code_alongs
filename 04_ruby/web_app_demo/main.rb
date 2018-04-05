require 'sinatra'
require 'sinatra/reloader'# changes in main.rb does not require a restart of the server
require 'pry'

get '/' do
 return  'welcome to the homepage'
end

get '/chips' do
  return 'hot chips'
end

# url - http://localhost:4567/hello?name=codebusters&size=11
# starting from the? is called a query string
get '/hello' do 
  # params is a magic global hash
  return "Hi #{params["name"]} how are you doing?"
end

get '/lucky_number' do
  return "here is your lucky number #{rand(1..20)}"
end


# http://localhost:4567/multiply?num1=3&num2=5
get '/multiply' do
  return "the result is #{ params[:num1].to_i * params[:num2].to_i }"
end

get '/about' do
  @name = 'michael'
  erb(:some_page)
  
end