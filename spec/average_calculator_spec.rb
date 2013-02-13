# coding: utf-8

require File.dirname(__FILE__) + '/spec_helper'

describe "AverageCalculator" do

  it "打席3 打数2 安打数1" do
    AverageCalculator.new.calc(3, 2, 1).should eq 0.5
  end

  it "打席5 打数4 安打数1" do
    AverageCalculator.new.calc(5, 4, 1).should eq 0.25
  end

  it "打席10 打数3 安打数1" do
    AverageCalculator.new.calc(10, 3, 1).should eq 0.333
  end

  it "打席10 打数3 安打数2" do
    AverageCalculator.new.calc(10, 3, 2).should eq 0.667
  end

  it "打席0 打数0 安打数0" do
    AverageCalculator.new.calc(0, 0, 0).should eq nil
  end

  it "打席5 打数0 安打数0" do
    AverageCalculator.new.calc(5, 0, 0).should eq 0.000
  end

  
end
