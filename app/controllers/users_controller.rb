class UsersController < ApplicationController

before_action :find_user, only: [:edit, :update]

  def edit
  end

  def update
  @user.update(post_params)
  flash[:notice] = 'Profile has been updated'
  redirect_to profiles_path
  end


  private

  def find_user
    @user = User.find(params[:id])
  end

  def post_params
  params.require(:user).permit(:bio, :postcode, :location, :interested_in)
  end
end
