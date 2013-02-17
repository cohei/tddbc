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

  it "昇順のソートが可能" do
    a = BattingAverage.new(1,1,0)
    b = BattingAverage.new(1,1,1)
    [b, a].sort.should == [a, b]
  end

  it "打席が0割の選手と打率が0の選手では、打率が0割の選手が上位" do
    appearances_0 = BattingAverage.new(0,0,0)
    batting_average_0 = BattingAverage.new(1,1,0)
    [batting_average_0, appearances_0].sort.should == [appearances_0, batting_average_0]
  end

end
