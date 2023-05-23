require 'spec_helper'
RSpec.describe Customer do
  describe 'initialize' do
    it 'can initialize' do
      samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })

      expect(samson).to be_an_instance_of(Pet)
    end
    it 'returns correct initialize data on Pet class' do
      samson = Pet.new({ name: 'Samson', type: :dog, age: 3 })

      expect(samson.name).to eq('Samson')
      expect(samson.type).to eq(:dog)
      expect(samson.age).to eq(3)
    end
  end
end
