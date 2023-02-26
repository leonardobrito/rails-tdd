# frozen_string_literal: true

require 'student'
require 'course'

describe 'Stubs' do
  it '#finished?' do
    student = Student.new
    course = Course.new

    allow(student).to receive(:finished?)
      .with(an_instance_of(Course))
      .and_return(true)

    expect(student.finished?(course)).to be_truthy
  end
end
