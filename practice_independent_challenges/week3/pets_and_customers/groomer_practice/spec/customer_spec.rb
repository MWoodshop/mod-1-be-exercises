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

    describe 'charge and payment for pets' do
      it 'customer created with a 0 oustanding_balance' do
        joel = Customer.new('Joel', 2)

        expect(joel.outstanding_balance).to eq(0)
      end
      joel = Customer.new('Joel', 2)
      it 'can charge' do
        joel.charge(15)
        expect(joel.outstanding_balance).to eq(15)

        joel.charge(7)
        expect(joel.outstanding_balance).to eq(22)
      end
    end
  end
end
