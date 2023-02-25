# frozen_string_literal: true

require 'counter'

describe 'Change' do
  it { expect { Counter.increase_quantity }.to(change { Counter.quantity }) }
  it { expect { Counter.increase_quantity }.to(change { Counter.quantity }.by(1)) }
  it { expect { Counter.increase_quantity }.to(change { Counter.quantity }.from(2).to(3)) }
end
