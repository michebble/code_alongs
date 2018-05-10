class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      # yay
      session[:user_id] = user.id
      redirect_to '/'
    else
      # stay where you are
      render :new
    end
  end

end