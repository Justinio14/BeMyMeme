class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def add
    @user_id = current_user.id
    @user = User.find(@user_id)
    @meme_get = params[:id].to_i
    p @user.memes
    @user.memes << Meme.find(@meme_get)
    # @user.memes.create(meme_id: @meme_get)
    p @meme_get
    #nil --- p Meme.find(@meme_get).user_id
    # @user.meme_id = @meme_get.id.to_i
    #assocation is being recognised, but possibly not been saved
    p @user.memes
    # @user.memes.user_id
    # set meme_id: nil in User and Collection = @meme_get.id
    p @user

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
