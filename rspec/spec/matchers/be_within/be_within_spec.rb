# frozen_string_literal: true

RSpec::Matchers.define_negated_matcher :be_not_within, :be_within

describe 'be_within' do
  it { expect(11.4).not_to be_within(0.5).of(12) }
  it { expect(11.4).to be_not_within(0.5).of(12) }
  it { expect(11.5).to be_within(0.5).of(12) }
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(12.6).not_to be_within(0.5).of(12) }

  it { expect([11.5, 12.5]).to all(be_within(0.5).of(12)) }
end
