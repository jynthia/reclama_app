require 'test_helper'

class FirstCompshomeControllerTest < ActionDispatch::IntegrationTest
  test "should get help" do
    get first_compshome_help_url
    assert_response :success
  end

end
