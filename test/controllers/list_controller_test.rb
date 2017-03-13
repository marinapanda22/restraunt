require 'test_helper'

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get list_main_url
    assert_response :success
  end

  test "should get all" do
    get list_all_url
    assert_response :success
  end

  test "should get one" do
    get list_one_url
    assert_response :success
  end

end
