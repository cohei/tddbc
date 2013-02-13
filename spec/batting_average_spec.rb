# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'

describe "BattingAverage" do

  it "delete integer part" do
    BattingAverage.new(10,3,1).to_s.should == ".333"
  end

  it "doesn't delete integer part when 1.000" do
    BattingAverage.new(10,3,3).to_s.should == "1.00"
  end

  it "format '----' if nil" do
    BattingAverage.new(0,0,0).to_s.should == "----"
  end

end
