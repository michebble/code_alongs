class SalesController < ApplicationController
  def new
    @sale = Sale.new
  end

  def create
    # params mass assignment & strong params
    # sale = Sale.new(params)
    # sale.user_id = User.first.id
    # sale.save

    sale = Sale.new(sale_params)
    # sale.description = params[:description]
    # sale.address = params[:address]
    # sale.images = params[:sale][:images]
    sale.user_id = User.first.id # fix later
    sale.save
    redirect_to "/sales/#{ sale.id }"
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def destroy
    sale = Sale.find(params[:id])
    sale.destroy
    redirect_to '/'
  end

  def edit
    @sale = Sale.find(params[:id])
  end

  def update
    sale = Sale.find(params[:id])
    sale.update(sale_params)
    # sale.description = params[:description]
    # sale.address = params[:address]
    # sale.images = params[:images]
    sale.save
    redirect_to "/sales/#{sale.id}"
  end

  def index
    @sales = Sale.all
  end

  def sale_params
    params.require(:sale).permit(:description, :address, {images: []})
  end

end