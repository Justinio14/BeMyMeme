class ProfilesController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @user = User.all
  end

  def show
    find_user
    i = @user.memes.length
    i = 5 if i > 5
    @memes = @user.memes.take(i)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
