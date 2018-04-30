     
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/json'
require 'sinatra/cross_origin'
require 'pg'
require 'pry'


require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/user'
require_relative 'models/like'

enable :sessions
enable :cross_origin

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
end

helpers do

  def logged_in?
    current_user ? true : false
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end

get '/' do
  @dishes = Dish.all
  erb :index

end

get '/api/dishes' do
  @dishes = Dish.all
  json @dishes
end

get '/dishes/new' do
  erb :new
end

post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect to ('/')
end

get "/dishes/:id" do
  @dish = Dish.find(params[:id])
  @comments = @dish.comments
  erb :dish
  
end

delete "/dishes" do
  dish = Dish.find( params[:id] )
  dish.destroy
  redirect to('/')
end

get '/dishes/:id/edit' do
  @dishes = Dish.find(params[:id])
  erb :edit
end

put '/dishes/:id' do
  dish = Dish.find( params[:id] )
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save
  redirect to("/dishes/#{ params[:id] }") 
end

post '/comments' do

  comment = Comment.new
  comment.content = params[:content]
  comment.dish_id = params[:dish_id]
  comment.user_id = current_user.id
  comment.save
  redirect to("/dishes/#{ params[:dish_id] }") 
end

get '/login' do
  erb :login
end

post '/session' do
  user = User.find_by( email: params[:email] )

  if user && user.authenticate( params[:password] )
    session[:user_id] = user.id # single source of truth
    # prevents the data going stale
    redirect to('/')
  else
    erb :login
  end
end

delete '/session' do
  session[:user_id] = nil
  redirect to('/login')
end

post '/api/likes' do
  redirect to('/login') unless logged_in?
  
  like = Like.new
  like.user_id = current_user.id
  like.dish_id = params[:dish_id]
  like.save

  json likes_count: Dish.find(params[:dish_id]).likes.count

end

post '/likes' do
  redirect to('/login') unless logged_in?

  like = Like.new
  like.user_id = current_user.id
  like.dish_id = params[:dish_id]
  if like.save
    redirect to("/dishes/#{ params[:dish_id] }")
  end
end


options "*" do
  response.headers["Allow"] = "GET, POST, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end