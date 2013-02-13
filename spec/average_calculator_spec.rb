# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'

describe "AverageCalculator" do

  it "打席3 打数2 安打数1" do
    AverageCalculator.new.calc(3, 2, 1).should eq 0.5
  end

  it "打席5 打数4 安打数1" do
    AverageCalculator.new.calc(3, 2, 1).should eq 0.25
  end

end
