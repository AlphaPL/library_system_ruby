require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :found
  end

  test "should get new" do
    get :new
    assert_response :found
  end

  test "should create user" do
    post :create, user: { address: @user.address, email: @user.email, is_admin: @user.is_admin, is_deleted: @user.is_deleted, name: @user.name, password: @user.password, phone: @user.phone }
    assert_response :found
  end

  test "should show user" do
    get :show, id: @user
    assert_response :found
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :found
  end

  test "should update user" do
    patch :update, id: @user.id, user: { address: @user.address, email: @user.email, is_admin: @user.is_admin, is_deleted: @user.is_deleted, name: @user.name, password: @user.password, phone: @user.phone }
    assert_response :redirect
  end

  test "should destroy user" do
    delete :destroy, id: @user
    assert_response :redirect
  end
end
