class ApplicationController < ActionController::Base
  protect_from_forgery
  check_authorization
  include SessionsHelper
  

  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied. - Please Login or verify your permissions."
    redirect_to root_url
  end

end
