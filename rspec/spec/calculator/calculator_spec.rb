# frozen_string_literal: true

require 'calculator'
describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      expect(subject.sum(5, 7)).to eq(12)
    end

    it 'with negative numbers' do
      expect(subject.sum(-5, -5)).to eq(-10)
    end

    it 'with negative and positive numbers' do
      expect(subject.sum(-5, 7)).to eq(2)
    end
  end
end
