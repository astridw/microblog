require 'test_helper'

class WavesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

end
