class MessagesController < ApplicationController
  def index
    # binding.pry
    @room = Room.find(params[:room_id])
    @message = Message.new
  end
  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    # binding.pry
    if @message.save then
      redirect_to room_messages_path(@room)
    else
      render :index 
    end
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end

  # private
  # def room_param
  #   param.require(:room).permit(:id)
  # end
  # def message_param
  #   param.require(:message).permit()
  # end
end
