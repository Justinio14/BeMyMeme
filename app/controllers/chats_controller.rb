class ChatsController < ApplicationController

  def index
    @chat = Chat.all
  end

  

end
