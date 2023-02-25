# frozen_string_literal: true

describe 'let!' do
  call_order = []
  counter = 0

  let!(:count) do
    call_order << :let!
    counter += 1
  end

  it 'call let helper method before the test' do
    call_order << :example
    expect(call_order).to eq(%i[let! example])
    expect(count).to eq(1)
  end
end

describe 'let' do
  call_order = []
  counter = 0

  let(:count) do
    call_order << :let!
    counter += 1
  end

  it 'call let helper method before the test' do
    call_order << :example
    expect(call_order).to eq(%i[example])
    expect(count).to eq(1) # 1º call
    expect(call_order).to eq(%i[example let!])
  end
end
