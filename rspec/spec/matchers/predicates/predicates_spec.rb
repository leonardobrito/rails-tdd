# frozen_string_literal: true

describe 'Matchers predicates' do
  it 'be_odd' do
    expect(1).to be_odd
  end

  it 'be_even' do
    expect(2).to be_even
  end

  it 'be_nil' do
    expect(defined? x).to be_nil
  end

  it 'be_zero' do
    expect(0).to be_zero
  end
end
