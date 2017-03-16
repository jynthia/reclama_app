require 'test_helper'

class FirstControllerTest < ActionDispatch::IntegrationTest


  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Home - Reclama App"
  end

  test "should get help" do
    get help_path
    assert_response :success
    assert_select "title", "Help - Reclama App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About - Reclama App"
  end

  test "should get submit" do
    get submit_path
    assert_response :success
    assert_select "title", "Submit - Reclama App"
  end

end
