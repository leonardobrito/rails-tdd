# frozen_string_literal: true

describe 'be_within' do
  it { expect(11.4).not_to be_within(0.5).of(12) }
  it { expect(11.5).to be_within(0.5).of(12) }
  it { expect(12.5).to be_within(0.5).of(12) }
  it { expect(12.6).not_to be_within(0.5).of(12) }

  it { expect([11.5, 12.5]).to all(be_within(0.5).of(12)) }
end
