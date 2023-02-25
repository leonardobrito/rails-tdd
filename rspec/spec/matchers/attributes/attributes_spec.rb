# frozen_string_literal: true

require 'person'

describe 'Matchers attributes' do
  it 'have_attributes' do
    person = Person.new
    person.name = 'Leonardo'
    person.age = 28

    expect(person).to have_attributes(name: 'Leonardo', age: 28)
    expect(person).to have_attributes(name: start_with('L'))
    expect(person).to have_attributes(name: starting_with('L'))
    expect(person).to have_attributes(name: a_string_starting_with('L'))
    expect(person).to have_attributes(age: (be > 27))
    expect(person).to have_attributes(age: (a_value > 27))
  end
end
