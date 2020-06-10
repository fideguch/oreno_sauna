class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
	  devise_parameter_sanitizer.permit(:sign_in, keys: [:user_name])
	  devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])
	end

	def after_sign_out_path_for(resource)
		new_saunner_session_path
	end
end
