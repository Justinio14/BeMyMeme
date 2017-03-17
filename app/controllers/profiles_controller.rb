class ProfilesController < ApplicationController

    before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.all
  end


  def show
  end

  def edit
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
