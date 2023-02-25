# frozen_string_literal: true

describe 'Matchers comparitions' do
  it '>' do
    expect(5).to be > 1
  end

  it '>=' do
    expect(5).to be >= 4
    expect(5).to be >= 5
  end

  it '<' do
    expect(1).to be < 5
  end

  it '<=' do
    expect(4).to be <= 5
    expect(5).to be <= 5
  end

  it 'be_between inclusive' do
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
    expect(7).to be_between(2, 7).inclusive
  end

  # it can be enabled on spec_helper file

  # it 'be_between inclusive / Aggregated failures' do
  #   aggregate_failures do
  #     expect(5).to be_between(2, 7).inclusive
  #     expect(1).to be_between(2, 7).inclusive
  #     expect(8).to be_between(2, 7).inclusive
  #   end
  # end

  # it 'be_between inclusive / Aggregated failures', aggregate_failures: true do
  #   expect(5).to be_between(2, 7).inclusive
  #   expect(1).to be_between(2, 7).inclusive
  #   expect(8).to be_between(2, 7).inclusive
  # end

  # it 'be_between inclusive / Aggregated failures', :aggregate_failures do
  #   expect(5).to be_between(2, 7).inclusive
  #   expect(1).to be_between(2, 7).inclusive
  #   expect(8).to be_between(2, 7).inclusive
  # end

  it 'be_between exclusive' do
    expect(5).to be_between(2, 7).exclusive
    expect(2).not_to be_between(2, 7).exclusive
    expect(7).not_to be_between(2, 7).exclusive
  end

  it 'match' do
    expect('john.doe@email.com').to match(/..@../)
  end

  it 'start_with' do
    expect('john doe').to start_with('john')
    expect([1, 2, 3]).to start_with(1)
  end

  it 'end_with' do
    expect('john doe').to end_with('doe')
    expect([1, 2, 3]).to end_with(3)
  end
end
