class ProfilesController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @user = User.all
  end

  def show
    i = @user.memes.length
    @memes = @user.memes.take(i)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
