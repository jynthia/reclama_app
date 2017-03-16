require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  
  def setup 
  	@message = Message.new(content: "Bla Bla Bla", number: "15240")
  end

  test "should be valid" do
  	assert @message.valid?
  end

  test "content should be present" do
    @message.content = "     "
    assert_not @message.valid?
  end

  test "number should be present" do
    @message.number = "     "
    assert_not @message.valid?
  end
end
