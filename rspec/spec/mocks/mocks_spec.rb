# frozen_string_literal: true

require 'student'

describe 'Mock' do
  it '#bar' do
    # setup
    student = Student.new

    # verify
    expect(student).to receive(:bar)

    # exercise
    student.bar
  end

  it '#foo with args' do
    student = Student.new

    expect(student).to receive(:foo).with(123)

    student.foo(123)
  end

  it '#foo repetitions call' do
    student = Student.new

    # expect(student).to receive(:foo).with(123).once
    expect(student).to receive(:foo).with(123).twice
    # expect(student).to receive(:foo).with(123).exactly(2).times
    # expect(student).to receive(:foo).with(123).at_least(:once)
    # expect(student).to receive(:foo).with(123).at_least(:twice)
    # expect(student).to receive(:foo).with(123).at_least(2).times

    student.foo(123)
    student.foo(123)
  end

  it '#foo with args and return' do
    student = Student.new

    expect(student).to receive(:foo).with(123).and_return(true)

    expect(student.foo(123)).to be_truthy
  end
end
