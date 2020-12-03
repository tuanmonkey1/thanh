class ApplicationController < ActionController::Base
  
  before_action :set_locale
  before_action :find_user
  protect_from_forgery

  include SessionsHelper

  private
  
    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end
    def default_url_options
      {locale: I18n.locale}
    end	

    def find_user
    	if logged_in?
    		@user = current_user
    	end
    end
    def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
     helper_method :current_user
end


