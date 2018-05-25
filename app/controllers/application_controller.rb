class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
    def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:profile_picture])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:pseudo, :profile_picture, :profile_picture_cache])
  end
end
