class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name, :email, :password, :password_confirmation)
    end
  end

  def after_sign_in_path_for(scope)
    stored_location_for(scope) || partners_root_path
  end

  def after_sign_out_path_for(scope)
    stored_location_for(scope) || partners_root_path
  end
end