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

  def show
    render params[:page]
  end
  def default_url_options
  { host: ENV["HOST"] || "localhost:3000" }
  end
  # Make sure your production HOST variable is set with your domain name. If you deploy your code with Heroku for instance, just type in your terminal heroku config:set HOST=www.my_product.com

  # You can check it's properly set with heroku config:get HOST.
end
