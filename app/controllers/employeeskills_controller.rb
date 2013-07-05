class EmployeeskillsController < ApplicationController
  def new
    @skills=Skill.all
    @emloyeeskill = current_user.employeeskills.build
  end
  
  def create
    Employeeskill.where(:employee_id => params[:emp_id]).destroy_all
    skills=params[:skill_ids]
    for skill in skills
      Employeeskill.create(:employee_id => params[:emp_id],:skill_id => skill)
    end
    flash[:notice] = "Skills Updated"
     @employeeskill =Employeeskill.where(employee_id: params[:id])
      respond_to do |format|
        format.html {redirect_to @employeeskill}
        format.js 
      end
  end
  
  def complete
    Employeeskill.where(:employee_id => params[:emp_id]).destroy_all
    skills=params[:skill_ids]
    for skill in skills
      Employeeskill.create(:employee_id => params[:emp_id],:skill_id => skill)
    end
    redirect_to employees_path
  end
end
