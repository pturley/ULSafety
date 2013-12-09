class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters_for_devise, if: :devise_controller?
  
  def after_sign_in_path_for (resource_or_scope)
  	interactive_lab_path
  end

  protected

  def configure_permitted_parameters_for_devise
  	devise_parameter_sanitizer.for(:sign_up) << :name
  	devise_parameter_sanitizer.for(:sign_up) << :age
  end

end
