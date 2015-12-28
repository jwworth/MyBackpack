class SessionsController < ApplicationController

  def new
  end

  def create
    hiker_info = params[:session_data]
    @hiker = Hiker.find_by_email(hiker_info[:email])
      if !@hiker.nil?
        if @hiker.authenticate(hiker_info[:password])
          session[:hiker_id] = @hiker.id
          redirect_to hiker_path(@hiker)
        else
          flash.now[:error] = "Incorrect email or password"
          render :new
        end
      else
        flash.now[:error] = "Incorrect email or password"
        render :new
      end
  end


end
