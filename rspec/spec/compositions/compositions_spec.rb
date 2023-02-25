# frozen_string_literal: true

require_relative 'compositions_helper'

RSpec.configure do |config|
  config.include(CompositionsHelper)
end

describe 'Compositions' do
  it { is_expected.to start_with('Compo').and end_with('sitions') }

  it { expect(one_piece_character).to eq('Luffy').or eq('Zoro').or eq('Sanji').or eq('Nami').or eq('Robin') }

  it { expect(fruit).to eq('apple').or eq('orange').or eq('mango').or eq('banana').or eq('grape') }

  it { expect(i_am_a_biker).to eq('I\'m a biker') }

  # helper method arbitrary
  def fruit
    %w[apple orange mango banana grape].sample
  end
end
