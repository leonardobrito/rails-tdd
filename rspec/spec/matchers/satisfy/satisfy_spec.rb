# frozen_string_literal: true

describe 'Satisfy' do
  it { expect(10).to satisfy(&:even?) }
  it { expect(10).to satisfy('be even', &:even?) }
  it { expect(9).to satisfy('be multiple of 3') { |x| (x % 3).zero? } }
  it {
    expect(9).to satisfy('be multiple of 3') do |x|
      (x % 3).zero?
    end
  }
end
