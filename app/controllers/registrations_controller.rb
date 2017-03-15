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
end
