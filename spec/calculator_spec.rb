$: << File.expand_path('..', File.dirname(__FILE__))
require "rubygems"
require "rspec"
require "calculator"

describe "Calculator" do

  it "initial state should be zero" do
    calc = Calculator.new

    calc.total.should == 0
  end

  it "should reset to zero" do
    calc = Calculator.new "3.14"

    calc.total.should == 3.14

    calc.reset
    calc.total.should == 0
  end

  it "1 + 1 should be 2" do
    calc = Calculator.new "1"
    calc.add "1"

    calc.total.should == 2
  end

  it "0 - 1 should be -1" do
    calc = Calculator.new
    calc.subtract "1"

    calc.total.should == -1
  end

  it "should handle decimal numbers pricisely" do
    calc = Calculator.new "1.03"
    calc.subtract "0.42"

    calc.total.should == 0.61

    calc.reset
    100000.times { calc.add "0.00001" }

    calc.total.should == 1

  end

end