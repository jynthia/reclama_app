require 'test_helper'

class LayoutTestTest < ActionDispatch::IntegrationTest
	test "links" do
  		get root_path
  		assert_template 'first/home'
  		assert_select "a[href=?]", root_path
  		assert_select "a[href=?]", help_path
  		assert_select "a[href=?]", about_path
  		assert_select "a[href=?]", new_path, count: 2
  	end
end
