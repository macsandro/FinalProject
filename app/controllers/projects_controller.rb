class ProjectsController < ApplicationController
  before_action :set_projects
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # GET customers/1/projects
  def index
    @projects = @customer.projects
  end

  # GET customers/1/projects/1
  def show
  end

  # GET customers/1/projects/new
  def new
    @project = @customer.projects.build
  end

  # GET customers/1/projects/1/edit
  def edit
  end

  # POST customers/1/projects
  def create
    @project = @customer.projects.build(project_params)

    if @project.save
      redirect_to([@project.customer, @project], notice: 'Project was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT customers/1/projects/1
  def update
    if @project.update_attributes(project_params)
      redirect_to([@project.customer, @project], notice: 'Project was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE customers/1/projects/1
  def destroy
    @project.destroy

    redirect_to customer_projects_url(@customer)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects
      @customer = Customer.find(params[:customer_id])
    end

    def set_project
      @project = @customer.projects.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def project_params
      params.require(:project).permit(:name, :address, :city, :state, :zip_code, :contact, :phone_number)
    end
end
