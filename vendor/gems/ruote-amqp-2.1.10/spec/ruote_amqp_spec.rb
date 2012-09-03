require File.dirname(__FILE__) + '/spec_helper'

describe RuoteAMQP do
  it "should use persistent messages by default" do
    RuoteAMQP.use_persistent_messages?.should be_true
  end

  it "should allow switching to transient messages" do
    RuoteAMQP.use_persistent_messages = false
    RuoteAMQP.use_persistent_messages?.should be_false
  end
end
