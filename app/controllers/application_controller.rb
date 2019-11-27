class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception
  	before_action :configure_permitted_parameters, if: :devise_controller?

  	# after login ke dashboard 
  	def after_sign_in_path_for(resource)
	  stored_location_for(resource) || dashboard_path
	end

   	protected
       	def configure_permitted_parameters
           	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :nim, :bukti_pembayaran)}
         	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :nim, :bukti_pembayaran)}
       	end
end
