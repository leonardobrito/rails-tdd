# frozen_string_literal: true

describe 'Compositions' do
  it { is_expected.to start_with('Compo').and end_with('sitions') }

  it { expect(fruit).to eq('apple').or eq('orange').or eq('mango').or eq('banana').or eq('grape') }

  def fruit
    %w[apple orange mango banana grape].sample
  end
end
