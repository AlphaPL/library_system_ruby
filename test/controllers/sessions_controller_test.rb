require 'test_helper'

class SessionControllerTest < ActionController::TestCase
tests SessionsController
  test "should get new" do
    get :new
    assert_response :success
  end
end