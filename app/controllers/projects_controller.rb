class ProjectsController < ApplicationController

  def index
    @projects = Project.all.order("created_at desc")
  end

  def new
    @project = Project.new project_params
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: "Nice! Project saved!"
    else
      render 'new'
    end    
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :lnk)
  end
end
