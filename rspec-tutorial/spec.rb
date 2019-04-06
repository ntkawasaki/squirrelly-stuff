# frozen_string_literal: true

require 'rspec/autorun'
require_relative 'factorial'

# Describe block to group all tests of Factorial class
describe Factorial do
  let(:calculator) { Factorial.new }
  subject(:calculator_x) { Factorial.new }

  it 'finds factorial of 5' do
    expect(calculator.factorial_of(5)).to eq(120)
  end
end
