# encoding: utf-8

require 'spec_helper'

describe ApplicationController do
  before(:each) do
    #controller.should_receive(:require_signin)   #error if commented out. Not sure why
  end
  
  describe "log method" do
    it "should increase log by one by calling sys_logger" do
      lambda do
        controller.sys_logger("test")
      end.should change(SysLog, :count).by(1)
    end
  end
  
  describe "methods for before_filter" do
    it "should invoke require_employee" do
      session[:employee] = false
      controller.send(:require_employee)
      #response.should redirect_to root_path
    end
  
    it "should invoke require_signin for those without login" do
      #session[:user_id] = nil
      current_user = nil
      controller.send(:require_signin)
      #controller {should redirect_to signin_path}  
    end
  end
  
  describe "session_timeout" do
    it "should reset session for expired session (90m)" do
      session[:last_seen] = 100.minutes.ago.utc
      controller.session_timeout()
      controller.should {reset_session}
    end
    
    it "should delete session which is more than 12 hours old" do
      session = FactoryGirl.create(:session, :created_at => 13.hours.ago)
      lambda do
        controller.session_timeout()
        controller.should {Session.sweep}
      end.should change(Session, :count).by(-1)
    end
  end
  
end
