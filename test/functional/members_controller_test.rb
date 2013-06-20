require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { address_house_number: @member.address_house_number, address_street: @member.address_street, birthday: @member.birthday, city: @member.city, enabled: @member.enabled, first_name: @member.first_name, last_name: @member.last_name, membership_finished_on: @member.membership_finished_on, membership_started_on: @member.membership_started_on, postal_code: @member.postal_code, team_id: @member.team_id }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    put :update, id: @member, member: { address_house_number: @member.address_house_number, address_street: @member.address_street, birthday: @member.birthday, city: @member.city, enabled: @member.enabled, first_name: @member.first_name, last_name: @member.last_name, membership_finished_on: @member.membership_finished_on, membership_started_on: @member.membership_started_on, postal_code: @member.postal_code, team_id: @member.team_id }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
