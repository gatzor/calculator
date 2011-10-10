require "rubygems"
require "bigdecimal"

class Calculator

  attr_reader :total

  def initialize initial_value = "0"
    @total = BigDecimal.new(initial_value)
  end

  def add value
    @total += BigDecimal.new(value)
  end

  def subtract value
    @total -= BigDecimal.new(value)
  end

  def reset
    @total = BigDecimal.new("0")
  end

end
