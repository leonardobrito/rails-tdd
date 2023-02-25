# frozen_string_literal: true

describe 'This is the subject' do
  it 'String' do
    expect(subject).to eq('This is the subject')
  end
end

describe [1, 2, 3] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
    expect(subject).to start_with(1)
    expect(subject).to end_with(3)
  end
end
