# frozen_string_literal: true

describe 'doubles' do
  it '--' do
    user = double('User')
    # allow(user).to receive_messages(name: 'Leonardo', password: 'secret')
    # allow(user).to receive_messages(name: 'Leonardo', password: 'secret')
    allow(user).to receive(:name).and_return('Leonardo')
    allow(user).to receive(:password).and_return('secret')
    puts user.inspect
    puts user.name
    puts user.password
  end
end
