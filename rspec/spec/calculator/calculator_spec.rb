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

  context '#div' do
    it 'by zero' do
      # expect { subject.div(5, 0) }.to raise_exception  // Too generic error, avoid using like this
      expect { subject.div(5, 0) }.to raise_error(ZeroDivisionError)
      expect { subject.div(5, 0) }.to raise_error('divided by 0')
      expect { subject.div(5, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect { subject.div(5, 0) }.to raise_error(/divided/) # regex
    end
  end
end
