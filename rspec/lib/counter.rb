# frozen_string_literal: true

# Counter
class Counter
  @quantity = 0

  class << self
    attr_reader :quantity
  end

  def self.increase_quantity
    @quantity += 1
  end
end
