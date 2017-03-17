class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def add
     @user = User.find(session[:user_id])
     @memes = Meme.find(params[:meme.id])
     @user.memes << @memes
     flash[:notice] = 'Meme was saved.'
   end

  def meme_gallery
    API.refresh #remove this in production
    @memes = Meme.all
    respond_to do |format|
      format.html
      format.js
    end
  end

end
