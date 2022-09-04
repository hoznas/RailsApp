class MessagesController < ApplicationController
  layout 'messages'
  def index
    @msg = "Message data."
    @data = Message.all
  end

  def show
    @msg = "Indexed data."
    @massage = Message.find(params[:id])
  end

  def add
    @msg = "Message data."
    @message = Message.new
  end

  def edit
    @msg = "edit data. [id=" + params[:id] + "]"
    @message = MEssages.find(params[:id])
  end
  
  def update
    obj = Message.find(params[:id])
    obj.update(message_params)
    redirect_to '/messages'
  end

  def delete 
    obj = Message.find(params[:id])
    obj.destroy
    redirect_to "/message"
  end

  private 
  def message_params
    params.require(:message).permit(:person_id, :title, :message)
  end
end
