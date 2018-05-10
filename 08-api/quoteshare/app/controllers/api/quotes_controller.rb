class Api::QuotesController < ApplicationController

  def index
    @quotes = Quote.all
    render json: @quotes
  end

  def create
    quote = Quote.new
    quote.content = params[:content]
    quote.author = params[:author]
    quote.save
  end

  def first3
    render json: Quote.limit(3)
  end

  def search
    render json: Quote.where("content ilike '%#{params[:q]}%'")
  end

end