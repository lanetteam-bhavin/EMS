class AdminsController < ApplicationController
  def new
    @admin=Admin.new
  end

  def create
    @admin=Admin.new(admin_params)
    if @admin.save
      redirect_to new_session_path
    else
      render 'new'
    end
  end
  def edit
  end
  
  def show
    @admin=Admin.find(params[:id])
    @designations = Designation.find(:all)
  end
  private
  def admin_params
    params.require(:admin).permit(:AdminName,:AdminEmail,:password,:password_confirmation)
    #params.require(:user).permit(:email,:password)
 
  end
end
