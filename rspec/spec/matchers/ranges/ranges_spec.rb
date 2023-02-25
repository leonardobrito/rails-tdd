# frozen_string_literal: true

describe (1..5), 'Ranges' do
  it '#cover' do
    is_expected.to cover(2) # same as below
    expect(subject).to cover(2)
    expect(subject).to cover(5, 2) # order doesn't matter
    expect(subject).not_to cover(0, 6) # order doesn't matter
  end

  # one-line sintaxe
  it { expect(subject).to cover(2) }
  it { is_expected.to cover(2) }
  it { is_expected.to cover(5, 2) }
  it { is_expected.not_to cover(0, 6) }
end
