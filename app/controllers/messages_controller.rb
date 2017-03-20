# Controller for modifying the "messages" resource
# Main resource for updating the base model

class MessagesController < ApplicationController

  # NOT DONE!
  # Should implement search, paginate and showing all the content in the model base
  def show
    @message = Message.find(params[:id])
    @messages = Message.all
    if params[:search]
      @messages = Message.search(params[:search]).order("created_at DESC")
    else
      @messages = Message.all.order('created_at DESC')
    end
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

  private

    # Param setter
  	def message_params
  		params.require(:message).permit(:content, :number)
  	end

end
