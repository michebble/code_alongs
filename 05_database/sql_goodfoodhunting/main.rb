     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'

def run_query(sql)
  conn = PG.connect(dbname: 'goodfoodhunting')
  result = conn.exec(sql)
  conn.close
  return result
end




get '/' do
  
  sql = 'select * from dishes ORDER BY id;'

  @dishes = run_query(sql)
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
  run_query(sql)
  redirect to ('/')
end


get "/dishes/:id" do
  sql = "SELECT * FROM dishes WHERE id = #{params[:id]};"
  query_result = run_query(sql)
  if query_result.first.nil?
    redirect to('/')
  end
  @dishes = query_result.first

  @comments = run_query("SELECT * FROM comments WHERE dish_id = #{params[:id]};")
  erb :dish
  
end

delete "/dishes" do
  sql = "DELETE FROM dishes WHERE id = #{params[:id]};"
  run_query(sql)
  redirect to('/')

end

get '/dishes/:id/edit' do
  sql = "SELECT * FROM dishes WHERE id = #{params[:id]};"
  query_result = run_query(sql)
  @dishes = query_result.first
  erb :edit
end

put '/dishes/:id' do
  sql = "UPDATE dishes SET name = '#{ params[:name] }', image_url = '#{ params[:image_url]}' WHERE id = #{ params[:id] };"
  run_query(sql)
  redirect to("/dishes/#{params[:id]}") 
end

post '/comments' do
  sql = "INSERT INTO comments (content, dish_id) VALUES ('#{params[:content]}', '#{params[:dish_id]}')"
  run_query(sql)
  redirect to("/dishes/#{params[:dish_id]}") 
end