require 'sinatra'
require 'sinatra/reloader'
require 'stock_quote'
require 'pry'

get '/' do
  erb :index
end

get '/stock_info' do
  
  StockQuote::Stock.quote(params[:stock_symbol] )
  #erb :stock_info
end

get '/about' do
  'about me'
end

get '/donate' do
  'thanks'
end



# require 'sinatra'
# require 'sinatra/reloader'
# require 'stock_quote'
# require 'pry'

# get '/' do
#   if params[:stock_symbol] != nil
#   @stock = StockQuote::Stock.quote(params[:stock_symbol])
#   else
#     @stock = nil
#   end
#   erb :index
# end

# get '/about' do
#   erb :about
# end