class ChatsController < ApplicationController

  def index
    @chat = Chat.all
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = current_user.chats.build(chat_params)
    if @chat.save
      flash[:success] = 'Chat room added!'
      redirect_to chat_path
    else
      render 'new'
    end
  end

  def show
    @chat = Chat.includes(:messages).find_by(id: params[:id])
  end


  private

  def chat_params
    params.require(:chat).permit(:chat_recipient, :chat_initiator)
  end



end
