class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :authenticate_user!
  protect_from_forgery with: :exception
  layout :layout_by_controller

    protected

    def layout_by_controller
      devise_controller? ? 'devise' : 'application'
    end
end
