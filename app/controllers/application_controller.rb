class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  helper_method :current_user, :logged_in?

  def current_user
    #return unless session[:user_id]
    #@user ||= User.find(session[:user_id])

    u_moment = session['warden.user.user.key'].try(:first).try(:last)

    @user ||= User.find(
      u_moment
    ) if u_moment.present?
  end

  def logged_in?
    !current_user.nil?
  end

  protected

  def configure_permitted_parameters
    attributes = [:name, :email, :role]

    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
