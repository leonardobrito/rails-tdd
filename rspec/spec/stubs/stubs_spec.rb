# frozen_string_literal: true

require 'student'
require 'course'

describe 'Stubs' do
  it '#finished?' do
    student = Student.new
    course = Course.new

    # allow(student).to receive(:finished?)
    #   .and_return(true)

    allow(student).to receive(:finished?)
      .with(an_instance_of(Course))
      .and_return(true)

    expect(student.finished?(course)).to be_truthy
  end

  it '#foo, dinamic args' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      case arg
      when :hello
        'Hello'
      when :hi
        'Hi'
      end
    end

    expect(student.foo(:hello)).to be('Hello')
    expect(student.foo(:hi)).to be('Hi')
  end

  it 'Any class instance' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy
  end

  it 'Error' do
    student = Student.new

    allow(student).to receive(:bar).and_raise(RuntimeError)

    expect { student.bar }.to raise_error(RuntimeError)
  end
end
