class ChatsController < ApplicationController

before_action :authenticate_user!

  def index
    session[:chats] ||= []
    @users = User.all.where.not(id: current_user)
    @chats = Chat.includes(:recipient, :messages).find(session[:chats])
  end

  def create
   @chat = Chat.get(current_user.id, params[:user_id])
   add_to_chats unless chatted?
   respond_to do |format|
    format.js
   end
  end

  def close
    @chat = Chat.find(params[:id])

    session[:chats].delete(@chat.id)

    respond_to do |format|
      format.js
    end
  end

 private

 def add_to_chats
   session[:chats] ||= []
   session[:chats] << @chat.id
 end

 def chatted?
  session[:chats].include?(@chat.id) 
 end
end
