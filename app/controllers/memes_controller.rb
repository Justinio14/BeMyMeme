class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def meme_gallery
    API.refresh #remove this in production
    @meme_first = Meme.first
    @meme_last = Meme.last
    @memes = Meme.all
    respond_to do |format|
      format.html
      format.js
    end
  end

end
