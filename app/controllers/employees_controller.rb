class EmployeesController < ApplicationController
  
  def index
  	 @employees=Employee.joins(:designation).includes(:designation)
  	 @employee=Employee.new
  end

  def create
  	@employee = Employee.new(employee_params)
  	if @employee.save
  		flash[:message]="Employee added"
  		redirect_to employees_path
  	else
       @employees=Employee.joins(:designation).includes(:designation)
  		render 'index'
  	end
  end

  def show 
  	# Employee.find(params[:id])
    @employee=Employee.find(params[:id])
    @designation=Designation.find(@employee.designation_id)
    #@skills=Employee.joins(:employeeskill).includes(:employeeskill).where(:id => params[:id])
    @skills=Employeeskill.where(employee_id: params[:id])
    i=0
    @classname=''
    while i < @employee.empclass.to_i do
      @classname = @classname + "I"
      i=i+1
    end
    @classname="IV" if i > 3
  end
  
  def edit
    @employee=Employee.find(params[:id])
    @skills=Skill.all
    @emloyeeskill = @employee.employeeskills.build
    @emloyeeskills =@employee.employeeskills.select(:skill_id).to_a.map { |s| s['skill_id']}
    @employeerec = @employee.employeerecs.build
    @employeerecs = @employee.employeerecs#.select(:employee_id,:designation_id,:work_from,:work_to)
    #@employeeskill=Employeeskill.where(employee_id: params[:id]).select(:skill_id).to_a.map { |s| s['skill_id']}
  end
  
  def update
     @employee=Employee.find(params[:id])
    if @employee.update_attributes(employee_params)
      redirect_to employees_path
    else
      render 'edit'
    end
  end
  
  private
  def employee_params
  	params.require(:employee).permit(:FirstName,:LastName,:email,:address,:city,:state,:designation_id,:empclass,:education,:image,:birthday,:joining_date)
  end
end
