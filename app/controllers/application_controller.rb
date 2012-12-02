# encoding: utf-8
class ApplicationController < ActionController::Base
  
  protect_from_forgery

  before_filter :session_timeout
  before_filter :set_locale
  before_filter :require_signin
  before_filter :get_user_id
  
  #for methods available to the whole app
  helper_method 

  #make session related method available to all controllers
  include Authentify::SessionsHelper
  include Authentify::AuthentifyUtility
  
  def set_locale
    locale = params[:locale]
    puts params[:locale]
    I18n.locale = params[:locale] || I18n.default_locale
  end  
  
  
   
  #simple logging for a user with id, ip address, name, datetime and action.
  def sys_logger(action_logged)
    log = SysLog.new({:log_date => Time.now, :user_id => session[:user_id], :user_name => session[:user_name], :user_ip => session[:user_ip],
                     :action_logged => action_logged}, :as => :logger)
    log.save!
  end
  
end
