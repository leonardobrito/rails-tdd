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
end
