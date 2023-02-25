# frozen_string_literal: true

describe Array.new([1, 2, 3]), 'Array' do
  it '#include' do
    expect(subject).to include(2)
    expect(subject).to include(2, 1) # order doesn't matter
  end

  it '#contain_exactly' do
    expect(subject).to contain_exactly(2, 1, 3) # order doesn't matter
  end

  it '#match_array' do
    expect(subject).to match_array([2, 1, 3]) # order doesn't matter
  end
end
