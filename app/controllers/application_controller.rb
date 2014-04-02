class ApplicationController < ActionController::Base 

before_filter :configure_permitted_parameters, if: :devise_controller?
def configure_permitted_parameters
	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :first_name, :last_name, :profile_name, :password, :password_confirm)}
end
protect_from_forgery with: :exception
end

 