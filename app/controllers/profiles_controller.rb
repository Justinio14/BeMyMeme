class ProfilesController < ApplicationController

  before_action :find_user, only: [:show]

  def index
    @user = User.all
  end


  def show
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
