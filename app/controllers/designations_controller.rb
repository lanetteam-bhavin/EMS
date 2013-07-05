class DesignationsController < ApplicationController
  def index
    @designations = Designation.find(:all)
    @designation = Designation.new
  end
  def create
    @designation = Designation.new(designation_params)
    if @designation.save
    	flash[:notice] = "Designation Added"
      respond_to do |format|
        format.html {redirect_to @designation}
        format.js 
      end
    	
    else
    	render 'index'
  	end
  end
  private
  def designation_params
  	params.require(:designation).permit(:desig_name)
  end
end