class ChatsController < ApplicationController

  layout false

  def index
      @users = User.where.not("id = ?",current_user.id).order("created_at DESC")
      @chats = Chat.involving(current_user).order("created_at DESC")
  end



  def create
    if Chat.between(params[:chat_initiator],params[:chat_recipient]).present?
      @chat = Chat.between(params[:chat_initiator],params[:chat_recipient]).first
    else
      @chat = Chat.create!(chat_params)
    end

    render json: {chat_id: @chat.id }
  end


  def show
    @conversation = Chat.find(params[:id])
    @reciever = interlocutor(@chat)
    @messages = @chat.messages
    @message = Message.new
  end



  private

  def chat_params
    params.require(:chat).permit(:chat_recipient, :chat_initiator)
  end

  def interlocutor(chat)
    current_user == chat.chat_recipient ? chat.chat_initiator : chat.chat_recipient
  end

end
