class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :about])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :about])
	end
end
