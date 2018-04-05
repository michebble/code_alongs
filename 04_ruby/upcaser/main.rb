require 'sinatra'
require 'sinatra/reloader'

$emails = ['mhgfd@ting.com', 'tryeui@fing.com']

get '/' do
  erb :home
end

get '/admin' do
  @emails = $emails
  erb :admin
end

get '/wow' do 
  $emails.push(params[:email])
end