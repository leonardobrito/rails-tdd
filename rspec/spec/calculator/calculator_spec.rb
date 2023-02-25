# frozen_string_literal: true

require 'calculator'
describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      calc = Calculator.new

      expect(calc.sum(5, 7)).to eq(12)
    end

    it 'with negative numbers' do
      calc = Calculator.new

      expect(calc.sum(-5, -5)).to eq(-10)
    end

    it 'with negative and positive numbers' do
      calc = Calculator.new

      expect(calc.sum(-5, 7)).to eq(2)
    end
  end
end
