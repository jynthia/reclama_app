require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
   	get new_message_path
    assert_response :success
    assert_select "title", "New - Reclama App"
  end

end
