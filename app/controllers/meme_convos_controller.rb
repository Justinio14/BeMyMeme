class MemeConvosController < ApplicationController
   def index
    session[:meme_convos] ||= []
 
    @users = User.all.where.not(id: current_user)
    @meme_convos = MemeConvo.includes(:recipient, :memes)
                                 .find(session[:meme_convos])
  end

  def create
    @meme_convo = MemeConvo.get(current_user.id, params[:user_id])
    add_to_conversations unless chatted?
    respond_to do |format|
      format.js
    end
  end

  private
 
  def add_to_conversations
    session[:meme_convos] ||= []
    session[:meme_convos] << @meme_convo.id
  end
 
  def chatted?
    session[:meme_convos].include?(@meme_convo.id)
  end
end
