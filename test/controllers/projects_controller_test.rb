require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
    @project = projects(:one)
  end

  test "should get index" do
    get :index, params: { customer_id: @customer }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { customer_id: @customer }
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, params: { customer_id: @customer, project: @project.attributes }
    end

    assert_redirected_to customer_project_path(@customer, Project.last)
  end

  test "should show project" do
    get :show, params: { customer_id: @customer, id: @project }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { customer_id: @customer, id: @project }
    assert_response :success
  end

  test "should update project" do
    put :update, params: { customer_id: @customer, id: @project, project: @project.attributes }
    assert_redirected_to customer_project_path(@customer, Project.last)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, params: { customer_id: @customer, id: @project }
    end

    assert_redirected_to customer_projects_path(@customer)
  end
end
