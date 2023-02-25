# frozen_string_literal: true

require 'calculator'
describe Calculator do
  it 'use sum method for 2 numbers' do
    calc = Calculator.new

    expect(calc.sum(5, 7)).to eq(12)
    expect(calc.sum(5, 5)).to eq(10)
  end

  specify 'use sum method for 2 numbers with negative numbers' do
    calc = Calculator.new

    expect(calc.sum(-5, 7)).to eq(2)
    expect(calc.sum(-5, -5)).to eq(-10)
  end
end
