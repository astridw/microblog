require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get signout" do
    get :signout
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get create_photon" do
    get :create_photon
    assert_response :success
  end

end
