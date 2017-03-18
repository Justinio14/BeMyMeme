class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def add
    @user_id = current_user.id
    @user = User.find(@user_id)
    @meme_get = params[:id].to_i
    @user.memes << Meme.find(@meme_get)
    #assocation is being recognised, but possibly not been saved
    p @user.memes
    # @user.memes

      # @this_meme = Meme.find(params[:id]) 
    #  @find_user.memes << Meme.find(@meme_get)
     flash[:notice] = 'Meme was saved.'
     redirect_to '/'
  end

  def meme_gallery
    API.refresh #remove this in production
    @memes = Meme.all
    respond_to do |format|
      format.html {render '_meme_gallery'}
      format.js
    end
  end

  def meme_params
    params.require(:memes).permit(:id)
  end

end
