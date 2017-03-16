require 'test_helper'

class FirstControllerTest < ActionDispatch::IntegrationTest

  test "should get root" do
    get root_url
    assert_response :success
  end

  test "should get home" do
    get first_home_url
    assert_response :success
    assert_select "title", "Home - Reclama App"
  end

  test "should get help" do
    get first_help_url
    assert_response :success
    assert_select "title", "Help - Reclama App"
  end

  test "should get about" do
    get first_about_url
    assert_response :success
    assert_select "title", "About - Reclama App"
  end

end
