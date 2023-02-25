# frozen_string_literal: true

require 'person'

describe 'Matchers attributes' do
  let(:person) { Person.new } # same as below
  # before(:each) do
  #   @person = Person.new
  # end

  it 'have_attributes' do
    person.name = 'Leonardo'
    person.age = 28

    expect(person).to have_attributes(name: 'Leonardo', age: 28)
    expect(person).to have_attributes(name: start_with('L'))
    expect(person).to have_attributes(name: starting_with('L'))
    expect(person).to have_attributes(name: a_string_starting_with('L'))
    expect(person).to have_attributes(age: (be > 27))
    expect(person).to have_attributes(age: (a_value > 27))
  end

  it 'have_attributes' do
    person.name = 'Brito'
    person.age = 28

    expect(person).to have_attributes(name: 'Brito', age: 28)
    expect(person).to have_attributes(name: start_with('B'))
    expect(person).to have_attributes(name: starting_with('B'))
    expect(person).to have_attributes(name: a_string_starting_with('B'))
    expect(person).to have_attributes(age: (be > 27))
    expect(person).to have_attributes(age: (a_value > 27))
  end
end
