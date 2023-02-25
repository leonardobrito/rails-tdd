# frozen_string_literal: true

describe 'Matchers comparations' do
  # ruby 3.1.3 puts x and y at the same memory address,
  # because of this the condition below works
  it '#equal object' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to equal(y)
    expect(x).to be(y)
  end

  it '#be object' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to be(y)
  end

  it '#eql value' do
    x = 'ruby'
    y = 'ruby'

    expect(x).to eql(y)
  end
end
