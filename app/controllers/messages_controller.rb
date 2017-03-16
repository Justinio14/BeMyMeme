class MessagesController < ApplicationController

  before_filter :authenticate_user!

  def create
    @conversation = Chat.find(params[:chat_id])
    @message = @conversation.messages.build(message_params)
    @message.user_id = current_user.id
    @message.save!

    @path = chats_path(@conversation)
  end

  private

  def message_params
    params.require(:message).permit(:message)
  end

end
