class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
      profiles_path
    end

  def after_sign_up_path_for(resource)
      profile_path(current_user)
  end
  # protect_from_forgery with: :exception
end
