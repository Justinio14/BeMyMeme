class ProfilesController < ApplicationController
  def index
    @user = User.all
  end


  def show
    @user = User.find(params[:id])
    redirect_to profile_path
  end

end
