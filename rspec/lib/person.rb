# frozen_string_literal: true

# Person
class Person
  attr_accessor :name, :age
  attr_reader :status

  def happy!
    @status = 'feeling happy'
  end

  def sad!
    @status = 'feeling sad'
  end

  def content!
    @status = 'feeling content'
  end
end
