class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:danger] = exception.message
    redirect_to request.referrer || root_url
  end
   rescue_from ActiveRecord::RecordNotFound do |exception|
    flash[:danger] = exception.message
    redirect_to request.referrer || root_url
  end
  
  include SessionsHelper
  
  def logged_in_user
    return if logged_in?
    store_location
    flash[:danger] = "Please login"
    redirect_to login_url
  end
end
