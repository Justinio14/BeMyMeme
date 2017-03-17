class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def meme_gallery
    respond_to do |format|
      format.html
      format.js
    end
  end

end
