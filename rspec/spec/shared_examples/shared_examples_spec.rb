# frozen_string_literal: true

require 'person'

shared_examples 'status' do |feeling|
  it "##{feeling}!" do
    person.public_send("#{feeling}!")
    expect(person.status).to eq("feeling #{feeling}")
  end
end

describe 'Shared examples' do
  subject(:person) { Person.new }

  # it '#happy' do
  #   person.happy!
  #   expect(person.status).to eq('feeling happy')
  # end

  # it '#sad' do
  #   person.sad!
  #   expect(person.status).to eq('feeling sad')
  # end

  # it '#content' do
  #   person.content!
  #   expect(person.status).to eq('feeling content')
  # end

  it_behaves_like 'status', :happy
  include_examples 'status', :sad
  it_should_behave_like 'status', :content
end
