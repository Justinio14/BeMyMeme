class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation,
    :bio, :dob, :gender, :postcode, :location, :username, :interested_in, :image, :image_cache)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation,
    :bio, :dob, :gender, :postcode, :location, :username, :interested_in, :image)
  end

   def after_sign_in_path_for(resource)
      profiles_path
    end

  def after_sign_up_path_for(resource)
      profile_path(current_user)
  end
  
end
