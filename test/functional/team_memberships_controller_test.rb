require 'test_helper'

class TeamMembershipsControllerTest < ActionController::TestCase
  setup do
    @team_membership = team_memberships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_memberships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_membership" do
    assert_difference('TeamMembership.count') do
      post :create, team_membership: { member_id: @team_membership.member_id, team_id: @team_membership.team_id }
    end

    assert_redirected_to team_membership_path(assigns(:team_membership))
  end

  test "should show team_membership" do
    get :show, id: @team_membership
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_membership
    assert_response :success
  end

  test "should update team_membership" do
    put :update, id: @team_membership, team_membership: { member_id: @team_membership.member_id, team_id: @team_membership.team_id }
    assert_redirected_to team_membership_path(assigns(:team_membership))
  end

  test "should destroy team_membership" do
    assert_difference('TeamMembership.count', -1) do
      delete :destroy, id: @team_membership
    end

    assert_redirected_to team_memberships_path
  end
end
