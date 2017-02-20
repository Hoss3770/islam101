class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CanCan::ControllerAdditions
  
  before_action :configure_permitted_params, if: :devise_controller?

  
  def configure_permitted_params
  	devise_parameter_sanitizer.permit(:sign_up,keys: [:name,:country,:avatar])
  	devise_parameter_sanitizer.permit(:account_update,keys: [:name,:country,:avatar])
  end

end
