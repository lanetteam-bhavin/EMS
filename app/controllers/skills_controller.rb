class SkillsController < ApplicationController
  def index
  @skills=Skill.all
  @skill=Skill.new
  end

  def create
  	@skill=Skill.new(skills_param)
  	if @skill.save
  		redirect_to skills_path
  	else
  		render 'index'
  	end
  end

  def edit
  	@skill=Skill.find(params[:id])
  end

  def update
  	@skill=Skill.find(params[:id])
  	if @skill.update_attributes(skills_param)
  		redirect_to skills_path
  	else
  		redirect_to 'edit'
  	end
  end
  private
  def skills_param
  	params.require(:skill).permit(:skill_name)
  end
end
