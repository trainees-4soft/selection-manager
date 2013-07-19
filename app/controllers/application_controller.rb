class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
  flash[:error] = "Access denied."
  redirect_to root_url
end
rescue_from Selection::NoMethodError do |exception|
  flash[:error] = "Access denied."
  redirect_to root_url
end
rescue_from ActiveRecord::RecordNotFound do |exception|
  flash[:error] = "Objeto Inexistente"
  redirect_to root_url
end
end
