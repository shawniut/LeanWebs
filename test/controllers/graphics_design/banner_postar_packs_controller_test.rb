require 'test_helper'

class GraphicsDesign::BannerPostarPacksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
