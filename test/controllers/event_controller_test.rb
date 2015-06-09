require 'test_helper'

class EventControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

end
