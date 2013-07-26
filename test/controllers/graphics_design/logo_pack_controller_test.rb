require 'test_helper'

class GraphicsDesign::LogoPackControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
