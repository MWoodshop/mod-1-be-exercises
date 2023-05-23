require 'spec_helper'
RSpec.describe Customer do
  # Iteration 1
  describe 'initialize' do
    it 'can initialize' do
      joel = Customer.new('Joel', 2)
      expect(joel).to be_a(Customer)
    end
    it 'stores data correctly' do
      joel = Customer.new('Joel', 2)

      expect(joel.name).to eq('Joel')
      expect(joel.id).to eq(2)
      expect(joel.pets).to eq([])
    end
  end

  describe 'can adopt' do
    it 'create pets and adopt' do
      joel = Customer.new('Joel', 2)
      samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })
      lucy = Pet.new({ name: 'Lucy', type: :cat, age: 12 })

      joel.adopt(samson)
      expect(joel.pets).to include(@name = samson)

      joel.adopt(lucy)
      expect(joel.pets).to include(@name = lucy)
    end
  end
end
