require 'test_helper'

class DepartmentsControllerTest < ActionController::TestCase
  setup do
    @department = departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create department" do
    assert_difference('Department.count') do
      post :create, department: { communication_responsible_id: @department.communication_responsible_id, finance_responsible_id: @department.finance_responsible_id, kit_manager_id: @department.kit_manager_id, leader_id: @department.leader_id, logistic_responsible_id: @department.logistic_responsible_id, name: @department.name, referee_id: @department.referee_id }
    end

    assert_redirected_to department_path(assigns(:department))
  end

  test "should show department" do
    get :show, id: @department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @department
    assert_response :success
  end

  test "should update department" do
    put :update, id: @department, department: { communication_responsible_id: @department.communication_responsible_id, finance_responsible_id: @department.finance_responsible_id, kit_manager_id: @department.kit_manager_id, leader_id: @department.leader_id, logistic_responsible_id: @department.logistic_responsible_id, name: @department.name, referee_id: @department.referee_id }
    assert_redirected_to department_path(assigns(:department))
  end

  test "should destroy department" do
    assert_difference('Department.count', -1) do
      delete :destroy, id: @department
    end

    assert_redirected_to departments_path
  end
end
