# Controller for modifying the "messages" resource
# Main resource for updating the base model

class MessagesController < ApplicationController

  # Gets the box, which is the index of all the messages paginated per 100
  def index
    @messages = Message.paginate(page: params[:page], per_page: 100)
  end

  # NOT DONE!
  # Should implement search
  def show
    @message = Message.find(params[:id])
  end

  # Initializes a new message class field
  def new
  	@message = Message.new
  end

  # Create a new message class field
  def create
  	@message = Message.new(message_params)
  	if @message.save
  		redirect_to @message 
  	else
  		render "new"
  	end
  end

  # Finds message to edit
  def edit
  	@message = Message.find(params[:id])
  end

  def destroy
    Message.find(params[:id]).destroy
    redirect_to messages_url
  end

  private

    # Param setter
  	def message_params
  		params.require(:message).permit(:content, :number)
  	end

end
