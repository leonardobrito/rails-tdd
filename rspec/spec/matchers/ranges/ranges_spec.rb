# frozen_string_literal: true

describe (1..5), 'Ranges' do
  it '#cover' do
    expect(subject).to cover(2)
    expect(subject).to cover(5, 2) # order doesn't matter
    expect(subject).not_to cover(0, 6) # order doesn't matter
  end
end
