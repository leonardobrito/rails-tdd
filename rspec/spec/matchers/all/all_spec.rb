# frozen_string_literal: true

describe 'All' do
  it { expect([1, 7, 9]).to all be_odd.and be_a(Integer) }

  it { expect(['ruby on', 'rails']).to all be_a(String).and include 'r' }
end
