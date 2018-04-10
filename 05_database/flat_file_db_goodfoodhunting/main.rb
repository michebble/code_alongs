     
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @dishes = IO.readlines('dishes.txt')
  
  erb :index

end

get '/dishes/new' do
  erb :new
end

post '/dishes/' do
  # save it somewhere permanent - save a file called dishes.txt
  File.open('dishes.txt', 'a+') do |file|
   file.puts "[#{params[:name]}, #{params[:image_url]}]"
  end
  redirect to('/')
end



