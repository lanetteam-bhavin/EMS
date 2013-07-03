class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = Admin.find_by(AdminEmail: params[:session][:AdminEmail].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id]=user.id
      redirect_to user
    else
      flash.now[:alert]="invalid email or password" 
      render "new"
    end
  end
  def destroy
    session[:user_id]=nil
    redirect_to root_path,:notice => "Logged Out !"
  end
end
