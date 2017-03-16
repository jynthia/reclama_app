require 'test_helper'

class SuggestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_path
    assert_response :success
    assert_select "title", "New - Reclama App"
  end

end
