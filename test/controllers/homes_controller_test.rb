require 'test_helper'

class HomesControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :found
  end

end
