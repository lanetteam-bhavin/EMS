class EmployeeskillsController < ApplicationController
  def complete
    Employeeskill.where(:employee_id => params[:emp_id]).destroy_all
   skills=params[:skill_ids]
   for skill in skills
     Employeeskill.create(:employee_id => params[:emp_id],:skill_id => skill)
   end
   redirect_to employees_path
  end
end
