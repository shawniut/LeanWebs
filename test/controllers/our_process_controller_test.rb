require 'test_helper'

class OurProcessControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
