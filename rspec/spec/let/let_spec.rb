# frozen_string_literal: true

describe 'let' do
  counter = 0
  let(:count) { (counter += 1) }

  it 'cache value' do
    expect(count).to eq(1) # 1º call
    expect(count).to eq(1) # 2º call cache
  end

  it 'not cache value' do
    expect(count).to eq(2) # 3/2º call
    expect(count).to eq(2) # 4/3º call cache
  end
end
