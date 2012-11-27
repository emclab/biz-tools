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
  include SessionsHelper
  
  def set_locale
    locale = params[:locale]
    puts params[:locale]
    I18n.locale = params[:locale] || I18n.default_locale
  end  
  
  
  #before_filter method for session time control. 1. reset session after SESSION_TIMEOUT_MINUTES. 
  #2. Delete session entry after SESSION_WIPEOUT_HOURS.
  #define session[:last_see] initial in utc format.
  #Also bypass in test environment.
  def session_timeout
    #return if Rails.env.test?
    #check session last_seen
    if session[:last_seen] < SESSION_TIMEOUT_MINUTES.minutes.ago
      reset_session
    else
      session[:last_seen] = Time.now.utc
    end unless session[:last_seen].nil?
    #check when session created
    if Session.first.created_at < SESSION_WIPEOUT_HOURS.hours.ago
      Session.sweep
    end unless Session.first.nil?
  end
   
  #simple logging for a user with id, ip address, name, datetime and action.
  def sys_logger(action_logged)
    log = SysLog.new({:log_date => Time.now, :user_id => session[:user_id], :user_name => session[:user_name], :user_ip => session[:user_ip],
                     :action_logged => action_logged}, :as => :logger)
    log.save!
  end
  
end
