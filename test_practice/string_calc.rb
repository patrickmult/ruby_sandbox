require 'minitest/autorun'

class Calculator
  def initialize(digits)
    @digits = parse_input(digits)
  end

  def parse_input(digits)
    digits.split(',').map { |n| n.to_i }
  end

  def sum
    @digits.inject(:+)
  end
end

describe Calculator do
  it 'sums provided digits' do
    calc = Calculator.new('1,2,3,4,5')
    calc.sum.must_equal(15)
  end
end

