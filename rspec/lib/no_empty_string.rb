# frozen_string_literal: true

# NoEmptyString
class NoEmptyString < String
  def initialize
    super
    self << "I'm not empty string"
  end
end
