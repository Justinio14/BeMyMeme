class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def add
    @user = current_user.id
    @find_user = User.find(@user)
    @meme_get = params[:id].to_i
      # @this_meme = Meme.find(params[:id]) 
    #  @find_user.memes << Meme.find(@meme_get)
     flash[:notice] = 'Meme was saved.'
     redirect_to '/'
  end

  def meme_gallery
    API.refresh #remove this in production
    @memes = Meme.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  def meme_params
    params.require(:memes).permit(:id)
  end

end
