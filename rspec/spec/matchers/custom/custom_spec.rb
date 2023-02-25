# frozen_string_literal: true

RSpec::Matchers.define :be_a_multiple_of do |expected|
  # subject == 18
  # expected == 3
  match do |_current|
    (subject % expected).zero?
  end

  # custom success message
  description do
    "be a multiple of #{expected}"
  end

  # custom failure message
  failure_message do |subject|
    "expected that #{subject} would be a multiple of #{expected}"
  end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3) }
end
