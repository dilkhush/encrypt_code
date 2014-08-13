require 'spec_helper'
require_relative '../app/models/code.rb'

describe Code do

  before(:each) do
    @code = Code.new("letsmeetatfive", 3, 14)
  end

  it "should encrypt message" do
    expected_result = "lmavesettietef"
    actual_result = @code.get_encrypt_message
    actual_result.should == expected_result
  end

  it "should encrypt message when keys is 0" do
    @code.keys = 0
    expected_result = "letsmeetatfive"
    actual_result = @code.get_encrypt_message
    actual_result.should == expected_result
  end
end
