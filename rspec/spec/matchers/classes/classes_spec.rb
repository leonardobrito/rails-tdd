# frozen_string_literal: true

require 'no_empty_string'
require 'calculator'

describe 'Matchers classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do
    no_empty_string = NoEmptyString.new
    expect(no_empty_string).to be_kind_of(String) # inheritance
    expect(no_empty_string).to be_kind_of(NoEmptyString)
  end

  it 'be_a / be_an' do
    no_empty_string = NoEmptyString.new

    expect(no_empty_string).to be_a(String)
    expect(no_empty_string).to be_a(NoEmptyString)

    expect(no_empty_string).to be_an(String)
    expect(no_empty_string).to be_an(NoEmptyString)
  end

  it 'respond_to' do
    calculator = Calculator.new
    expect('ruby').to respond_to(:size)
    expect(calculator).to respond_to(:sum)
  end
end
