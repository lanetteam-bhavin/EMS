class DesignationsController < ApplicationController
  def index
    @designations = Designation.find(:all)
    @designation = Designation.new
  end
  def create
    @designation = Designation.new(designation_params)
    if @designation.save
    	flash[:message]="Designation add !"
    	redirect_to designations_path
    else
    	render 'index'
  	end
  end
  private
  def designation_params
  	params.require(:designation).permit(:desig_name)
  end
end